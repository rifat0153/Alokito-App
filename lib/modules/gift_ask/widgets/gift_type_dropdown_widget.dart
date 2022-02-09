import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/gift_ask_controller.dart';

class GiftTypeDropdownButton extends StatelessWidget {
  GiftTypeDropdownButton({Key? key}) : super(key: key);

  final GiftAskController giftAskController = Get.find<GiftAskController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropdownButton<String>(
        isDense: true,
        value: giftAskController.selectedGiftType,
        icon: const Icon(Icons.arrow_downward),
        iconSize: 20.sp,
        elevation: 16,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.sp,
        ),
        underline: Container(
          height: 0,
          color: Colors.transparent,
        ),
        onChanged: (String? newValue) {
          giftAskController.setSelectedGiftType(newValue ?? 'Food');
        },
        items: giftAskController.giftTypeOptions.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}