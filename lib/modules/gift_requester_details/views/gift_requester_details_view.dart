import 'package:alokito_new/models/gift/gift.dart';

import '../../gift/widgets/user_detail_widget.dart';

import '../widgets/image_widget.dart';
import '../widgets/location_widget.dart';

import '../widgets/package_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../shared/styles.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../gift/widgets/user_joining_distance_widget.dart';
import '../../gift_requester/widgets/gift_detail_map_widget.dart';
import '../controllers/gift_requester_detail_controller.dart';
import '../services/gift_requester_detail_service.dart';
import '../widgets/decision_widget.dart';
import '../widgets/gift_details_widget.dart';

class GiftRequesterDetailsView extends StatelessWidget {
  GiftRequesterDetailsView({required this.gift});

  static const route = 'giftdetailview';

  final Gift gift;
  final AuthController authController = Get.find<AuthController>();

  //* Initializing Controller
  final GiftRequesterDetailController giftRecieverDetailController = Get.put(
    GiftRequesterDetailController(
      GiftRequesterDetailService(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: Get.size.height,
        width: Get.size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/gift_details.png'), fit: BoxFit.fill),
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: IconButton(
              onPressed: Get.back,
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            title: RichText(
              text: TextSpan(
                text: 'Gift Offer - ',
                style: const TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: gift.giftType,
                    style: boldFontStyle.copyWith(fontSize: 20),
                  ),
                ],
              ),
            ),
            elevation: 10,
            foregroundColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          body: _BuildBody(
            gift: gift,
            authController: authController,
            giftRecieverDetailController: giftRecieverDetailController,
          ),
        ),
      ),
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody(
      {Key? key, required this.gift, required this.authController, required this.giftRecieverDetailController})
      : super(key: key);

  final Gift gift;
  final AuthController authController;
  final GiftRequesterDetailController giftRecieverDetailController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          // top: 10,
          child: SizedBox(
            height: Get.height - 170.h,
            width: Get.size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageWidget(giftGiver: gift),
                  PackageName(giftGiver: gift),
                  GiftDetails(giftGiver: gift),
                  UserDetail(giftGiver: gift),
                  UserRatingAndDistance(gift: gift),
                  Location(giftGiver: gift),
                  GiftDetailMapWidget(gift: gift),
                ],
              ),
            ),
          ),
        ),
        DecisionWidget(
          authController: authController,
          gift: gift,
          giftRecieverDetailController: giftRecieverDetailController,
        ),
      ],
    );
  }
}
