import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInputWidget extends StatelessWidget {
  void _getLocalImage(bool fromGallery) async {
    ImagePicker _picker = ImagePicker();
    var pickedFile = fromGallery
        ? await _picker.getImage(
            source: ImageSource.gallery, imageQuality: 50, maxWidth: 400)
        : await _picker.getImage(
            source: ImageSource.camera, imageQuality: 50, maxWidth: 400);

    File imageFile = File(pickedFile != null ? pickedFile.path : '');

    if (imageFile.path != '') {
      // loginController.imageFile.value = imageFile;
      print('ImageFile:  ${imageFile.path}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Container(
            height: 200,
            // width: double.infinity,
            color: Colors.green,
            child: Image.asset('assets/images/profile-placeholder.png'),
          ),
        ),
        MaterialButton(
          onPressed: () => _getLocalImage(false),
          color: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Take a photo'),
          ),
        ),
        TextButton(
          onPressed: () => _getLocalImage(true),
          child: const Text('upload from gallery'),
        )
      ],
    );
  }
}
