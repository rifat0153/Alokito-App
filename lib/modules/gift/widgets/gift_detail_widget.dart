import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../shared/config.dart';
import '../controllers/gift_add_form_controller.dart';

class GiftDetailWidget extends StatelessWidget {
  GiftDetailWidget({
    Key? key,
  }) : super(key: key);

  final GiftAddFormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(width: 30),
            const Text('Gift Details'),
          ],
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            decoration: InputDecoration(
                border:  OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                ),
                fillColor: giftAddFormColor,
                filled: true,
                hintText: 'e.g. Food or Medicine name, quality, quantity, any other information'),
            maxLines: 3,
            onChanged: (value) => controller.giftDetails.value = value,
          ),
        ),
      ],
    );
  }
}