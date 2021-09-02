import 'package:cloud_firestore/cloud_firestore.dart';

class GiftError extends Error {
  GiftError(this.error);

  FirebaseException error;

  @override
  String toString() {
    return error.message ?? '';
  }
}
