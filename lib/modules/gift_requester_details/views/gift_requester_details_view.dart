import '../../gift/widgets/user_detail_widget.dart';

import '../widgets/image_widget.dart';
import '../widgets/location_widget.dart';

import '../widgets/package_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../models/gift_giver/gift.dart';
import '../../../shared/config.dart';
import '../../../shared/styles.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../gift/widgets/user_joining_distance_widget.dart';
import '../../gift_requester/widgets/gift_detail_map_widget.dart';
import '../controllers/gift_requester_detail_controller.dart';
import '../services/gift_requester_detail_service.dart';
import '../widgets/decision_widget.dart';
import '../widgets/gift_details_widget.dart';

class GiftRequesterDetailsView extends StatelessWidget {
  GiftRequesterDetailsView({required this.giftGiver});

  static const route = 'giftdetailview';

  final Gift giftGiver;
  final AuthController authController = Get.find<AuthController>();

  //* Initializing Controller
  final GiftRequesterDetailController giftRecieverDetailController = Get.put(
    GiftRequesterDetailController(
      GiftRequesterDetailService(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    var giftType = 'test';

    return SafeArea(
      child: Container(
        height: Get.size.height,
        width: Get.size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/gift_details.png'), fit: BoxFit.fill),
        ),
        child: Scaffold(
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
                    text: giftType,
                    style: boldFontStyle.copyWith(fontSize: 20),
                  ),
                ],
              ),
            ),
            elevation: 5,
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
          ),
          body: _BuildBody(
            giftGiver: giftGiver,
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
      {Key? key, required this.giftGiver, required this.authController, required this.giftRecieverDetailController})
      : super(key: key);

  final Gift giftGiver;
  final AuthController authController;
  final GiftRequesterDetailController giftRecieverDetailController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          // top: 10,
          child: SizedBox(
            height: Get.size.height - 170.h,
            width: Get.size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageWidget(giftGiver: giftGiver),
                  PackageName(giftGiver: giftGiver),
                  GiftDetails(giftGiver: giftGiver),
                  UserDetail(giftGiver: giftGiver),
                  UserRatingAndDistance(giftGiver: giftGiver),
                  Location(giftGiver: giftGiver),
                  GiftDetailMapWidget(gift: giftGiver),
                ],
              ),
            ),
          ),
        ),
        DecisionWidget(
          authController: authController,
          giftGiver: giftGiver,
          giftRecieverDetailController: giftRecieverDetailController,
        ),
      ],
    );
  }
}
