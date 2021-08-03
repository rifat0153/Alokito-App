import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:alokito_new/modules/gift_ask/gift_ask_view.dart';
import 'package:alokito_new/modules/gift_giver/gift_add_form_controller.dart';
import 'package:alokito_new/modules/gift_giver/gift_controller.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/modules/gift_receiver/gif_receiver_offer_list_view.dart';
import 'package:alokito_new/shared/my_drawer_widget.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class GiftReceiverView extends StatelessWidget {
  static const route = '/giftreceiverview';

  final GiftReceiverController giftRequestController = Get.put(GiftReceiverController());
  final GiftController giftController = Get.put(GiftController());
  final AuthController authController = Get.find();

  final media = Get.size;
  final double menuHeight = Get.size.height * 0.18;
  final double menuWidth = Get.size.width * 0.6;
  final bannerHeight = Get.size.height * 0.12;
  final bannerWidth = Get.size.width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        // drawer: MyDrawer(),
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          title: const Text(
            'Gift Receiver',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          actions: [
            Row(
              children: [
                Obx(() => Badge(
                      badgeContent: authController.currentUserInfo.value
                              .maybeWhen(data: (user) => user.hasNotifications, orElse: () => false)
                          ? const Text('!')
                          : const Text(''),
                      badgeColor: Colors.white,
                      child: const Icon(Icons.notifications, color: Colors.white),
                    )),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
          ],
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            Container(
              height: Get.size.height,
              width: Get.size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    // image: AssetImage(
                    //     'assets/images/gift_receiver_background.png'),
                    image: AssetImage('assets/images/rsz_1gift_receiver.png'),
                    fit: BoxFit.fill),
              ),
            ),
            const Center(
              child: _MyButtonRowWidget(),
            ),
            const Positioned(bottom: 0, child: _ThankYouBannerWidget())
          ],
        ),
      ),
    );
  }
}

class _ThankYouBannerWidget extends StatelessWidget {
  const _ThankYouBannerWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5.r,
        ),
      ]),
      child: Column(
        children: [
          const Text(
            'Thank You',
            style: TextStyle(fontSize: 20, color: Colors.cyan),
          ),
          SizedBox(height: 8.sp),
          Text(
            'for supporting lives',
            style: TextStyle(fontSize: 10.sp),
          ),
          Text(
            'Your time and services are precious but...',
            style: TextStyle(fontSize: 10.sp),
          ),
          Text(
            'But it can also put a smile on the face of many people which will give you a feeling of heaven',
            textAlign: TextAlign.center,
            maxLines: 5,
            style: TextStyle(fontSize: 10.sp),
          ),
        ],
      ),
    );
  }
}

class _MyButtonRowWidget extends StatelessWidget {
  const _MyButtonRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 10.h,
            ),
          ),
          onPressed: () {
            Get.to(() => GiftAskView());
          },
          child: MyText(
            'Gift Request',
            fontSize: 30.sp,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        ElevatedButton(
          onPressed: () {
            Get.toNamed(GiftReceiverOfferListView.route);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.grey[400],
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
              vertical: 10.h,
            ),
          ),
          child: MyText(
            'Gift Offer',
            fontSize: 30.sp,
          ),
        ),
      ],
    );
  }
}

class _BannerWidget extends StatelessWidget {
  _BannerWidget({required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: size.width,
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.dangerous,
            color: Colors.yellow,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              'Covid - 19 Sharing & Safety Guidelines',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
