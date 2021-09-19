import 'dart:io';

import '../controllers/gift_add_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageInputWidget extends StatelessWidget {
  GiftAddFormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Obx(
            () => Container(
              height: 200,
              child: controller.imageFile.value.path.length == 0
                  ? Image.asset('assets/images/image-place.png')
                  : Image.file(controller.imageFile.value),
            ),
          ),
        ),
        MaterialButton(
          onPressed: () => _getLocalImage(false),
          color: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Text(
              'Take a photo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () => _getLocalImage(true),
          child: const Text(
            'upload from gallery',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  void _getLocalImage(bool fromGallery) async {
    ImagePicker _picker = ImagePicker();
    var pickedFile = fromGallery
        ? await _picker.getImage(
            source: ImageSource.gallery, imageQuality: 50, maxWidth: 400)
        : await _picker.getImage(
            source: ImageSource.camera, imageQuality: 50, maxWidth: 400);

    File imageFile = File(pickedFile != null ? pickedFile.path : '');

    if (imageFile.path != '') {
      controller.imageFile.value = imageFile;
      print('ImageFile:  ${controller.imageFile.value.path}');
    }
  }
}
