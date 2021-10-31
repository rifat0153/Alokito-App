import 'package:alokito_new/models/gift_ask/gift_ask.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GiftAskDetailDecisionWidget extends StatelessWidget {
  GiftAskDetailDecisionWidget({
    required this.giftAsk,
    Key? key,
  }) : super(key: key);

  final GiftAsk giftAsk;

  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    // final user = authController.currentUserInfo.value.maybeWhen(orElse: () )

    return Obx(
      () => authController.currentUserInfo.value.when(
        data: (user) => SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (user.acceptedGiftId != giftAsk.id && user.acceptedGiftId.isEmpty)
                MaterialButton(
                  onPressed: () async {},
                  color: giftAskColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  height: 0,
                  child: MyText(
                    'Accept for confirmation',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp,
                  ),
                ),
              if (user.acceptedGiftId != giftAsk.id && user.acceptedGiftId.isNotEmpty)
                MyText(
                  'Another Request Ongoing',
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              if (user.acceptedGiftId == giftAsk.id && user.acceptedGiftId.isNotEmpty)
                MyText(
                  'Rquest Accepted',
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator.adaptive()),
        error: (error) => Text(error.toString()),
      ),
    );
  }
}