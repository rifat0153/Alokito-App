import 'dart:io';

import 'package:alokito_new/models/user/local_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuthService {
  Future<String> signIn({required String email, required String password});

  // For finding out if user is admin or not
  Stream<LocalUserInfo> loggedInUserStream();

  // Sign Up function
  Future<bool> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String userName,
    required File localFile,
  });

  uploadUserAndImage(LocalUser user, bool isUpdating, File localFile);

  uploadUser(LocalUser user, bool isUpdating, {String? imageUrl});
  Stream<User?> get authStateChanges;

  Future<void> signOut();
}
