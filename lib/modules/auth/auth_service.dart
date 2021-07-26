import 'dart:io';

import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/modules/auth/auth_exception.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:path/path.dart' as path;
import 'package:uuid/uuid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../models/user/local_user.dart';

abstract class BaseAuthService {
  Future<bool> updateLocalUser(LocalUser localUser);

  Future<bool> updateUserNotificationStatus(String id, bool notificationStatus);

  Future<String> signIn({required String email, required String password});

  Stream<LocalUser> loggedInUserStream();

  // Sign Up function
  Future<bool> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String userName,
    required File localImageFile,
  });

  Future<void> uploadUserAndImage(LocalUser user, bool isUpdating, File localFile);

  Future<void> uploadUser(LocalUser user, bool isUpdating, {String? imageUrl});

  Stream<User?> get authStateChanges;

  Future<void> signOut();

  Future<void> updateUserRating(String userId, int rating);
}

class AuthService implements BaseAuthService {
  AuthService(this._firebaseAuth, this._firestore);

  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  @override
  Future<void> updateUserRating(String userId, int rating) async {
    DocumentReference documentReference = _firestore.collection('users').doc(userId);

    try {
      await _firestore.runTransaction((transaction) async {
        DocumentSnapshot snapshot = await transaction.get(documentReference);

        if (!snapshot.exists) {
          throw AuthException(message: 'User $userId does not exists');
        }
        LocalUser localUser = LocalUser.fromJson(snapshot.data()!);

        var newRating = (localUser.ratingSum + rating) / (localUser.totalRating + 1);

        var updatedUser = localUser.copyWith(
          ratingSum: localUser.ratingSum + rating,
          totalRating: localUser.totalRating + 1,
          averageRating: newRating,
        );

        // Perform an update on the document
        transaction.update(documentReference, updatedUser.toJson());
      });
    } on FirebaseException catch (e) {
      throw AuthException(message: e.message);
    }
  }

  @override
  Future<bool> updateLocalUser(LocalUser localUser) async {
    try {
      await _firestore.collection('users').doc(localUser.id).update(localUser.toJson());

      return true;
    } on FirebaseAuthException catch (e) {
      throw AuthException(message: e.message);
    }
  }

  @override
  Future<bool> updateUserNotificationStatus(String id, bool notificationStatus) async {
    try {
      await _firestore.collection('users').doc(id).update({'hasNotifications': notificationStatus});

      return true;
    } on FirebaseAuthException catch (e) {
      throw AuthException(message: e.message);
    }
  }

  @override
  Future<String> signIn({required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);

      return _firebaseAuth.currentUser!.uid;
    } on FirebaseAuthException catch (e) {
      // await EasyLoading.dismiss();
      throw AuthException(message: e.message);
    }
  }

  @override
  Stream<LocalUser> loggedInUserStream() {
    try {
      return _firestore
          .collection('users')
          .doc(_firebaseAuth.currentUser?.uid)
          .snapshots()
          .map((DocumentSnapshot documentSnapshot) {
        if (documentSnapshot.exists) {
          var retVal = LocalUser.fromJson(documentSnapshot.data()!);
          return retVal;
        } else {
          return initialUser;
        }
      });
    } catch (e) {
      throw AuthException(message: 'No network');
    }
  }

  @override
  Future<bool> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String userName,
    required File localImageFile,
  }) async {
    try {
      // EasyLoading.show(status: 'loading...');
      UserCredential firebaseUser =
          await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

      print('IN signup:  ' + firebaseUser.user!.uid);

      Geoflutterfire geo = Geoflutterfire();

      var loc = await Location().getLocation();

      LatLng userPosition = LatLng(loc.latitude!, loc.longitude!);
      var myLocation = geo.point(latitude: userPosition.latitude, longitude: userPosition.longitude);
      var pos = myLocation.data as Map<dynamic, dynamic>;

      MyPosition myPosition =
          MyPosition(geohash: pos['geohash'] as String, geopoint: pos['geopoint'] as GeoPoint);

      LocalUser myUser = LocalUser(
        id: firebaseUser.user?.uid,
        firstName: firstName,
        lastName: lastName,
        email: email,
        userName: userName,
        position: myPosition,
        createdAt: Timestamp.now(),
      );

      await uploadUserAndImage(myUser, false, localImageFile);

      print("Signed up");
      return true;
    } on FirebaseAuthException catch (e) {
      // EasyLoading.dismiss();

      Get.snackbar(e.message ?? '', '', backgroundColor: Colors.red);
      print(e.message);
      return false;
    }
  }

  @override
  Future<void> uploadUserAndImage(LocalUser user, bool isUpdating, File localFile) async {
    if (localFile.path.length > 0) {
      print('Uploading Image');

      var fileExtension = path.extension(localFile.path);
      print('FileExtension: ' + fileExtension);

      var uuid = Uuid().v4();

      firebase_storage.Reference firebaseStorageRef =
          firebase_storage.FirebaseStorage.instance.ref().child('users/images/$uuid$fileExtension');

      try {
        await firebaseStorageRef.putFile(localFile);
      } on firebase_core.FirebaseException catch (e) {
        print('User ImageFile Upload Error: ' + e.message!);
      }

      String url = await firebaseStorageRef.getDownloadURL();
      print('Image DownloadUrl url: $url');
      await uploadUser(user, isUpdating, imageUrl: url);
    } else {
      print('Skipping Image Upload');
      await uploadUser(user, isUpdating);
    }
  }

  @override
  Future<void> uploadUser(LocalUser user, bool isUpdating, {String? imageUrl}) async {
    final CollectionReference userRef = FirebaseFirestore.instance.collection('users');

    if (imageUrl != null) {
      user = user.copyWith(imageUrl: imageUrl);
    }
    try {
      if (isUpdating) {
        await userRef.doc(user.id).update(user.toJson());

        print('Updated user with id: ${user.id}');
      } else {
        user = user.copyWith(id: _firebaseAuth.currentUser?.uid);

        DocumentReference documentRef = userRef.doc(user.id);

        await documentRef.set(user.toJson());
        print('Uploaded user successfully: ${user.toString()}');
      }
    } on FirebaseException catch (e) {
      throw AuthException(message: e.message);
    }
  }

  @override
  Stream<User?> get authStateChanges {
    try {
      return _firebaseAuth.authStateChanges();
    } catch (e) {
      return Stream.value(null);
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
