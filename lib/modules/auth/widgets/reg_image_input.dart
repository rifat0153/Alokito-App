import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../controllers/auth_controller.dart';
import '../controllers/login_controller.dart';

class RegImageInput extends StatelessWidget {
  final AuthController authController = Get.find();
  final LoginController loginController = Get.find();

  Future<void> _getLocalImage() async {
    final ImagePicker _picker = ImagePicker();
    final pickedFile = await _picker.getImage(
        source: ImageSource.gallery, imageQuality: 50, maxWidth: 400);

    final File imageFile = File(pickedFile != null ? pickedFile.path : "");

    if (imageFile.path != "") {
      loginController.imageFile.value = imageFile;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF40425c),
            width: 4,
          ),
          color: Colors.grey,
          borderRadius: BorderRadius.circular(200),
        ),
        child: Obx(
          () => loginController.imageFile.value.path.isNotEmpty
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.file(
                    loginController.imageFile.value,
                    fit: BoxFit.cover,
                  ),
                )
              : Container(),
        ),
      ),
      // 2nd child
      Positioned(
        bottom: 0,
        right: 10,
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: const Color(0xFF40425c),
            borderRadius: BorderRadius.circular(200),
          ),
          child: IconButton(
            onPressed: _getLocalImage,
            icon: const Icon(Icons.edit_rounded, color: Colors.white, size: 20),
          ),
        ),
      ),
    ]);
  }
}
