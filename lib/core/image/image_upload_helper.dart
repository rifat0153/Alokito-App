import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path;
import 'package:uuid/uuid.dart';

class ImageUploadHelper {


  static Future<String> uploadImageAndGetDownloadUrl(File file, String imagePath, FirebaseStorage storage) async {
    final fileExtension = path.extension(file.path);
    final uuid = const Uuid().v4();
    final firebaseStorageRef = storage.ref().child('$imagePath/$uuid$fileExtension');

    try {
      await firebaseStorageRef.putFile(file);
      final String url = await firebaseStorageRef.getDownloadURL();

      return url;
    } on FirebaseException catch (_) {
      throw Exception('Prescription Image upload error');
    }
  }
}
