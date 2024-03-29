import 'package:alokito_new/modules/help_ask/help_ask_list_view.dart';
import 'package:alokito_new/modules/help_ask/help_ask_view.dart';
import 'package:alokito_new/modules/team/views/team_view.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../shared/widget/my_drawer_widget.dart';
import '../../../shared/widget/my_text.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../chat_room/views/chat_room_view.dart';
import '../../notification/views/notification_view.dart';

class MyBottomNavbar extends StatelessWidget {
  MyBottomNavbar({Key? key}) : super(key: key);

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
              Get.to(const MyDrawer());
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
                // reset notificaiton count in Firebase
                authController.resetNotificationCount();
              },
              child: authController.newNotifications.value > 0
                  ? Badge(
                      badgeContent: MyText(
                        authController.newNotifications.value > 10 ? '10+' : authController.newNotifications.value.toString(),
                        color: Colors.white,
                        fontSize: 14.sp,
                      ),
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset(
                        'assets/svgs/bell_icon.svg',
                        height: 40.w,
                        width: 40.w,
                      ),
                    )
                  : SvgPicture.asset(
                      'assets/svgs/bell_icon.svg',
                      height: 40.w,
                      width: 40.w,
                    ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(HelpAskView.route);
              // Get.toNamed(TeamView.route);
            },
            child: SvgPicture.asset(
              'assets/svgs/red_button_icon.svg',
              height: 50.w,
              width: 50.w,
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(ChatRoomView.route);
            },
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
