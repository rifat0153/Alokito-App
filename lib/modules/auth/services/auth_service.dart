import 'dart:async';
import 'dart:io';
import '../../../core/location/location_helper.dart';
import '../../../models/user/local_user.dart';
import '../../../shared/config.dart';
import '../../../shared/my_bottomsheets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

import '../auth_exception.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:path/path.dart' as path;
import 'package:uuid/uuid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:get/get.dart';
import 'package:flutter/material.dart';

abstract class BaseAuthService {
  Future<void> signIn({required String email, required String password});

  // Sign Up function
  Future<void> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String userName,
    required File localImageFile,
  });

  Stream<int> streamNewNotificationNumber(String userUid);

  Future<LocalUserInfo> getLocalUserDB(String id);

  Future<LocalUser> uploadImageToFirebase(LocalUser user, bool isUpdating, File localFile);

  Future<void> updateUserNotificationStatus(String id, bool notificationStatus);

  Stream<User?> get authStateChanges;

  Future<void> signOut();
}

class AuthService implements BaseAuthService {
  AuthService(this._firebaseAuth, this._firestore);

  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  @override
  Stream<int> streamNewNotificationNumber(String userUid) {
    try {
      final stream = _firestore.collection('users').doc(_firebaseAuth.currentUser?.uid ?? 'abc').snapshots().map((doc) {
        final val = (doc.data()?['notificationCount'] ?? 0) as int;
        print('NotificationNUmber: ' + val.toString());
        return val;
      });

      return stream;
    } catch (e) {
      throw e;
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
  Future<void> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String userName,
    required File localImageFile,
  }) async {
    final client = http.Client();

    try {
      //  Create User in Firebase Auth
      final UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

      final Position position = await LocationHelper.determinePosition();
      final LatLng userPosition = LatLng(position.latitude, position.longitude);
      final Geometry geometry = Geometry(coordinates: [userPosition.longitude, userPosition.latitude]);

      LocalUser myUser = LocalUser(
        id: '',
        uid: userCredential.user != null ? userCredential.user!.uid : '',
        imageUrl: '',
        firstName: firstName,
        lastName: lastName,
        email: email,
        userName: userName,
        geometry: geometry,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      //  upload userImage to Firebase storage and return user with image url
      myUser = await uploadImageToFirebase(myUser, false, localImageFile);

      //  Create userDocument in mongodb
      final http.Response response = await client
          .post(
            Uri.parse('$baseUrl/user/store'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: localUserToJson(myUser),
          )
          .timeout(const Duration(seconds: 5));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final mongoUser = localUserFromJson(response.body);
        myUser = mongoUser;
      } else {
        await MyBottomSheet.showErrorBottomSheet('${response.statusCode}: Something went wrong');

        return;
      }

      // Creating userDoc in Firestore
      await _firestore.collection('users').doc(_firebaseAuth.currentUser?.uid).set(myUser.toJson());

      print('new user');
      print(myUser);
    } on TimeoutException catch (error) {
      await MyBottomSheet.showErrorBottomSheet('could not reach server');
    } on FirebaseAuthException catch (e) {
      Get.snackbar(e.message ?? '', '', backgroundColor: Colors.red);
    } catch (error) {
      await MyBottomSheet.showErrorBottomSheet('500: server is not reacheable at this moment');
    } finally {
      client.close();
    }
  }

  @override
  Future<LocalUser> uploadImageToFirebase(LocalUser user, bool isUpdating, File localFile) async {
    if (localFile.path.isNotEmpty) {
      final fileExtension = path.extension(localFile.path);

      final uuid = const Uuid().v4();

      final firebase_storage.Reference firebaseStorageRef = firebase_storage.FirebaseStorage.instance.ref().child(
          'users/${_firebaseAuth.currentUser != null ? _firebaseAuth.currentUser!.uid : ''}/images/$uuid$fileExtension');

      try {
        await firebaseStorageRef.putFile(localFile);
      } on firebase_core.FirebaseException catch (e) {
        await MyBottomSheet.showErrorBottomSheet(e.toString());
      }

      final String url = await firebaseStorageRef.getDownloadURL();

      return user.copyWith(imageUrl: url);
    } else {
      return user;
    }
  }

  @override
  Stream<User?> get authStateChanges {
    try {
      return _firebaseAuth.authStateChanges();
    } catch (e) {
      throw AuthException(message: 'Auth Stream not connected to internet');
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<LocalUserInfo> getLocalUserDB(String id) async {
    final client = http.Client();

    try {
      final http.Response response = await client.get(
        Uri.parse('$baseUrl/user/show?id=$id'),
        headers: {"Content-Type": "application/json"},
      ).timeout(const Duration(seconds: 5));

      print('GEt user status: ' + response.statusCode.toString());
      final LocalUser localUser = localUserFromJson(response.body);
      print('User: ' + localUser.uid.toString());

      return LocalUserInfo.data(localUser);
    } catch (e) {
      return LocalUserInfo.error(e.toString());
    }
  }
}
