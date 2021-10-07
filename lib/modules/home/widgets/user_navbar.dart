import 'package:alokito_new/modules/notification/notification_view.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../shared/my_drawer_widget.dart';
import '../../../shared/widget/my_text.dart';
import '../../auth/controllers/auth_controller.dart';

class UserNavbar extends StatelessWidget {
  final height = Get.size.height;
  final width = Get.size.width;

  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Get.to(MyDrawer());
            },
            child: SvgPicture.asset(
              'assets/svgs/person_icon.svg',
              height: 40.w,
              width: 40.w,
            ),
          ),
          Obx(
            () => GestureDetector(
              onTap: () {
                Get.toNamed(NotificationView.route);
              },
              child: Badge(
                badgeContent: MyText(
                  authController.newNotifications.value > 10
                      ? '10+'
                      : authController.newNotifications.value.toString(),
                  color: Colors.white,
                  fontSize: 14.sp,
                ),
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                  'assets/svgs/bell_icon.svg',
                  height: 40.w,
                  width: 40.w,
                ),
              ),
            ),
          ),
          GestureDetector(
            // TODO: Removed this
            onTap: () {
              Get.to(() => const _ShowSVG());
            },
            child: SvgPicture.asset(
              'assets/svgs/red_button_icon.svg',
              height: 50.w,
              width: 50.w,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              'assets/svgs/message_icon.svg',
              height: 40.w,
              width: 40.w,
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.find<AuthController>().signOut();
            },
            child: SvgPicture.asset(
              'assets/svgs/task_icon.svg',
              height: 40.w,
              width: 40.w,
            ),
          ),
        ],
      ),
    );
  }
}

class _ShowSVG extends StatelessWidget {
  const _ShowSVG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SvgPicture.asset(
          'assets/svgs/shape.svg',
          height: Get.height,
          width: Get.width,
        ),
      ),
    );
  }
}
