import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:uuid/uuid.dart';

class ImageService {
  static Future<File?> pickImageFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery, imageQuality: 50, maxWidth: 400);

    final File imageFile = File(pickedFile?.path ?? "");

    if (imageFile.path.isEmpty) return null;

    return imageFile;
  }

  static Future<String> uploadImageToFirebaseAndGetUrl(File file, String imagePath, FirebaseStorage storage) async {
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
