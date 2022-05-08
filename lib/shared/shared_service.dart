import 'dart:io';
import '../modules/gift/gift_exception.dart';
import 'widget/my_bottomsheets.dart';
import 'package:path/path.dart' as path;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:uuid/uuid.dart';

const timeout = 10;

class MyException implements Exception {
  MyException({this.message = 'Something Went wrong', this.exceptionFrom = 'Error'});

  final String? message;
  final String? exceptionFrom;

  @override
  String toString() {
    return '$exceptionFrom { message: $message }';
  }
}

class FirebaseService {
  static Future<String> uploadImageAndReturnDownloadURL(File imageFile, String imagePath) async {
    try {
      if (imageFile.path.isNotEmpty) {
        final fileExtension = path.extension(imageFile.path);

        final uuid = const Uuid().v4();

        final firebase_storage.Reference firebaseStorageRef =
            firebase_storage.FirebaseStorage.instance.ref().child('$imagePath/$uuid$fileExtension');

        try {
          await firebaseStorageRef.putFile(imageFile);
        } on firebase_core.FirebaseException catch (e) {
          await MyBottomSheet.showErrorBottomSheet(e.toString());
        }

        // * get download url of uploaded file
        final String downloadUrl = await firebaseStorageRef.getDownloadURL();

        return downloadUrl;
      } else {
        return '';
      }
    } catch (e) {
      throw GiftException(message: 'Gift Image upload fail');
    }
  }
}
