import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../shared/widget/my_text.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../gift_ask/views/gift_ask_view.dart';
import 'gif_requester_offer_list_view.dart';

class GiftRequesterView extends StatelessWidget {
  static const route = '/giftreceiverview';

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
            Positioned(
              top: 0,
              child: SvgPicture.asset(
                'assets/svgs/top bar.svg',
                height: 110.h,
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
            Get.toNamed(GiftRequesterOfferListView.route);
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
