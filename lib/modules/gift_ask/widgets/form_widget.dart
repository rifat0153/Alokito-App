import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../shared/styles.dart';
import '../controllers/gift_ask_controller.dart';
import 'styled_container_wdiget.dart';

class FormWidget extends StatelessWidget {
  FormWidget({Key? key}) : super(key: key);

  final GiftAskController giftAskController = Get.find<GiftAskController>();
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: StyledContainer(
            widget: Padding(
              padding: const EdgeInsets.all(4),
              child: TextField(
                maxLength: 25,
                decoration: const InputDecoration(
                  hintText: 'gift title',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  counterText: '',
                  isCollapsed: true,
                  isDense: true,
                ),
                onChanged: (String value) {
                  giftAskController.giftTitle.value = value;
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: GestureDetector(
            onTap: giftAskController.togglePackageSmallFamilty,
            child: Row(
              children: [
                Obx(
                  () => Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: giftAskController.packageSmallFamilty ? Colors.teal : Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                const SizedBox(width: 16),
                Text('Small Family Package', style: boldFontStyle),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
          child: GestureDetector(
            onTap: giftAskController.togglePackageSmallFamilty,
            child: Row(
              children: [
                Obx(
                  () => Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                        color: !giftAskController.packageSmallFamilty ? Colors.teal : Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(width: 16.w),
                Text('Large Family Package', style: boldFontStyle),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
          child: Text('Note', style: boldFontStyle),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: StyledContainer(
            widget: Padding(
              padding: const EdgeInsets.all(4),
              child: TextField(
                // autofocus: true,
                // focusNode: focusNode,
                maxLength: 150,
                maxLines: 3,
                decoration: const InputDecoration(
                  hintText: 'Feel free to write something...',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  counterText: '',
                  isCollapsed: true,
                  isDense: true,
                ),
                onChanged: (String value) {
                  giftAskController.note.value = value;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}