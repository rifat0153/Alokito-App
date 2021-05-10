import 'dart:io';

import 'package:alokito_new/services/auth/base_auth_service.dart';

import '../../controller/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../models/user/local_user.dart';
import 'package:path/path.dart' as path;
import 'package:uuid/uuid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:get/get.dart';

class AuthService implements BaseAuthService {
  final _firebaseAuth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  Future<String> signIn(
      {required String email, required String password}) async {
    try {
      EasyLoading.show(status: 'loading...');

      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      EasyLoading.dismiss();

      return _firebaseAuth.currentUser!.uid;
    } on FirebaseAuthException catch (e) {
      EasyLoading.dismiss();
      print(e.message);
      return '';
    }
  }

  // For finding out if user is admin or not
  Stream<LocalUserInfo> loggedInUserStream() {
    return _firestore
        .collection("users")
        .doc(_firebaseAuth.currentUser?.uid)
        .snapshots()
        .map((DocumentSnapshot documentSnapshot) {
      var retVal =
          LocalUserInfo.data(LocalUser.fromJson(documentSnapshot.data()!));

      return retVal;
    });
  }

  // Sign Up function
  Future<bool> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String userName,
    required File localFile,
  }) async {
    try {
      EasyLoading.show(status: 'loading...');
      UserCredential firebaseUser = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      print('IN signup:  ' + firebaseUser.user!.uid);

      LocalUser myUser = LocalUser(
          id: firebaseUser.user?.uid,
          firstName: firstName,
          lastName: lastName,
          email: email,
          userName: userName);

      uploadUserAndImage(myUser, false, localFile);

      print("Signed up");
      return true;
    } on FirebaseAuthException catch (e) {
      EasyLoading.dismiss();

      Get.snackbar(e.message ?? '', '', backgroundColor: Colors.red);
      print(e.message);
      return false;
    }
  }

  uploadUserAndImage(LocalUser user, bool isUpdating, File localFile) async {
    if (localFile.path.length > 0) {
      print('Uploading Image');

      var fileExtension = path.extension(localFile.path);
      print('FileExtension: ' + fileExtension);

      var uuid = Uuid().v4();

      firebase_storage.Reference firebaseStorageRef = firebase_storage
          .FirebaseStorage.instance
          .ref()
          .child('users/images/$uuid$fileExtension');

      try {
        await firebaseStorageRef.putFile(localFile);
      } on firebase_core.FirebaseException catch (e) {
        print('User ImageFile Upload Error: ' + e.message!);
        return false;
      }

      String url = await firebaseStorageRef.getDownloadURL();
      print('Image DownloadUrl url: $url');
      uploadUser(user, isUpdating, imageUrl: url);
    } else {
      print('Skipping Image Upload');
      uploadUser(user, isUpdating);
    }
  }

  uploadUser(LocalUser user, bool isUpdating, {String? imageUrl}) async {
    final CollectionReference userRef =
        FirebaseFirestore.instance.collection('users');

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

      EasyLoading.showSuccess('Successful!');
      EasyLoading.dismiss();
      // EasyLoading.showToast('Toast');
    } catch (e) {
      EasyLoading.showError('Action Failed');
      print(e.toString());
    }

    EasyLoading.dismiss();
  }

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
