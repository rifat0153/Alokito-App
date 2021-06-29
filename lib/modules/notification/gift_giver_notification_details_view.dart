import 'package:alokito_new/shared/skeleton_widget.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftGiverNotificationDetailsView extends StatelessWidget {
  const GiftGiverNotificationDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkeletonWidget(
      titleWidget: MyText('Notification - Requester Details', fontSize: 15),
      assetPath: 'assets/images/gift_details.png',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: context.height * 0.08),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Don't worry...",
                    style: boldFontStyle.copyWith(fontSize: 24),
                  ),
                  const SizedBox(height: 1000),
                  Text(
                    "Don't worry...",
                    style: boldFontStyle.copyWith(fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            height: Get.height * 0.08,
          )
        ],
      ),
    );
  }
}
