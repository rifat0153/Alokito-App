import 'dart:io';
import 'package:alokito_new/modules/gift_giver/gift_giver_exception.dart';
import 'package:alokito_new/shared/my_bottomsheets.dart';
import 'package:path/path.dart' as path;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:uuid/uuid.dart';

const timeout = 10;

class SharedService {
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
      throw GiftGiverException(message: 'Gift Image upload fail');
    }
  }
}
