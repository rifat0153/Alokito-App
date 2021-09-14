import 'dart:ui';

import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift/views/gift_view.dart';
import 'package:alokito_new/modules/gift_requester/views/gift_requester_view.dart';
import 'package:alokito_new/modules/home/home_view.dart';
import 'package:alokito_new/modules/notification/notification_view.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  final double menuItemHeight = 35;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sh,
      width: 0.7.sw,
      decoration: BoxDecoration(
        // color: Colors.red,
        image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.transparent.withOpacity(.90),
              BlendMode.dstIn,
            ),
            image: const AssetImage('assets/images/drawer_bg.png')),
      ),
      child: _buildDrawer(context),
    );
  }

  Column _buildDrawer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20.h,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: Container(
            color: Colors.blue,
            height: 50.h,
            width: 130.w,
            alignment: Alignment.center,
            child: Text(
              'Logo',
              style: TextStyle(fontSize: 30.sp),
            ),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Get.find<AuthController>().currentUserInfo.value.when(
              data: (user) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.r),
                      child: SizedBox(
                        width: 60.r,
                        height: 60.r,
                        child: Image.network(
                          user.imageUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (_, obj, st) => Image.asset('assets/images/profile_placeholder.png'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(user.userName),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          for (var i = 0; i < 5; i++)
                            user.averageRating.toInt() > i
                                ? const Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.orange,
                                  )
                                : const Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.black,
                                  ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              loading: () => const SizedBox(),
              error: (err) => Text(err.toString()),
            ),
        SizedBox(
          height: 40.h,
        ),
        _buildMenuItem(
          navFunction: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
          assetPath: 'assets/images/home.svg',
          menuItemName: 'Home',
        ),
        SizedBox(
          height: menuItemHeight.h,
        ),
        _buildMenuItem(
          navFunction: () {
            // Navigator.push(context, MaterialPageRoute(builder: (_) => GiftGiverView.route()));
            Navigator.pushNamed(context, GiftView.route);
          },
          assetPath: 'assets/images/gift_hand.svg',
          menuItemName: 'Gift Giver',
        ),
        SizedBox(
          height: menuItemHeight.h,
        ),
        _buildMenuItem(
          navFunction: () {
            Navigator.pushNamed(context, GiftRequesterView.route);
          },
          assetPath: 'assets/images/gift.svg',
          menuItemName: 'Gift Receiver',
        ),
        SizedBox(
          height: menuItemHeight.h,
        ),
        _buildMenuItem(
          navFunction: () {
            //  Todo: Add community route
          },
          assetPath: 'assets/images/hero.svg',
          menuItemName: 'Community Hero',
        ),
        SizedBox(
          height: menuItemHeight.h,
        ),
        _buildMenuItem(
          navFunction: () {
            //  Todo: Add team player route
          },
          assetPath: 'assets/images/group.svg',
          menuItemName: 'Team Players',
        ),
        SizedBox(
          height: menuItemHeight.h,
        ),
        _buildMenuItem(
          navFunction: () {
            Navigator.pushNamed(context, NotificationView.route);
          },
          assetPath: 'assets/images/bell.svg',
          menuItemName: 'Notification',
        ),
        SizedBox(
          height: menuItemHeight.h,
        ),
        _buildMenuItem(
          navFunction: () {
            //  Todo: Add About route
          },
          assetPath: 'assets/images/exclamation.svg',
          menuItemName: 'About',
        ),
        SizedBox(
          height: menuItemHeight.h,
        ),
        _buildMenuItem(
          navFunction: () {
            //  Todo: Add Help route
          },
          assetPath: 'assets/images/question_mark.svg',
          menuItemName: 'Help',
        ),
        SizedBox(
          height: menuItemHeight.h,
        ),
      ],
    );
  }

  Widget _buildMenuItem({
    required void Function() navFunction,
    required String assetPath,
    required String menuItemName,
  }) {
    return GestureDetector(
      onTap: navFunction,
      child: Row(
        children: [
          SizedBox(
            width: 26.w,
          ),
          SizedBox(width: 50.w, child: SvgPicture.asset(assetPath)),
          SizedBox(
            width: 20.w,
          ),
          MyText(menuItemName),
        ],
      ),
    );
  }
}
