import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../shared/config.dart';
import '../controllers/gift_request_controller.dart';

class SearchWidget extends StatelessWidget {
  final GiftRequestController giftReceiverController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        alignment: Alignment.center,
        width: Get.width,
        height: 37.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: giftAddFormColor,
        ),
        child: TextField(
          onChanged: giftReceiverController.searchString,
          decoration: const InputDecoration(
            hintText: 'Search by location, service type etc',
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
