import 'package:alokito_new/modules/team/views/join_team_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import 'package:alokito_new/shared/widget/my_text.dart';

import '../../gift/views/gift_view.dart';
import '../../gift_request/views/gift_request_view.dart';

class MenuTileWidget extends StatelessWidget {
  const MenuTileWidget({
    Key? key,
    required this.assetPath,
    required this.title,
    required this.width,
    required this.height,
    required this.positionTop,
    required this.positionLeft,
    required this.function,
  }) : super(key: key);

  final String assetPath;
  final String title;
  final double width;
  final double height;
  final double positionTop;
  final double positionLeft;
  final Callback function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.h),
      child: GestureDetector(
        onTap: function,
        child: Stack(
          children: [
            SizedBox(
              height: height,
              width: width,
              child: SvgPicture.asset(
                assetPath,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: positionTop,
              left: positionLeft,
              child: MyText(
                title,
                color: Colors.white,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}

final List<MenuTileWidget> menuListTile = [
  //TODO @monzim: Put this in right place
  // Gift Giver
  MenuTileWidget(
    assetPath: 'assets/svgs/gift giver.svg',
    title: 'Gift Giver',
    width: 0.7.sw,
    height: 0.08.sh,
    positionTop: 0.08.sh / 2 - 0.08.sh * 0.25,
    positionLeft: 0.7.sw / 2 - 12.w,
    function: () {
      Get.toNamed(JoinTeamView.route);
    },
  ),

  // Gift Giver
  MenuTileWidget(
    assetPath: 'assets/svgs/gift giver.svg',
    title: 'Gift Giver',
    width: 0.7.sw,
    height: 0.08.sh,
    positionTop: 0.08.sh / 2 - 0.08.sh * 0.25,
    positionLeft: 0.7.sw / 2 - 12.w,
    function: () {
      Get.toNamed(GiftView.route);
    },
  ),
  // Gift Receiver
  MenuTileWidget(
    assetPath: 'assets/svgs/gift reciever.svg',
    title: 'Gift Receiver',
    width: 0.7.sw,
    height: 0.08.sh,
    positionTop: 0.08.sh / 2 - 0.08.sh * 0.25,
    positionLeft: 0.7.sw / 2 - 12.w,
    function: () {
      Get.toNamed(GiftRequestView.route);
    },
  ),
  MenuTileWidget(
    assetPath: 'assets/svgs/community hero.svg',
    title: 'Community Hero',
    width: 0.7.sw,
    height: 0.08.sh,
    positionTop: 0.08.sh / 2 - 0.08.sh * 0.25,
    positionLeft: 0.7.sw / 2 - 12.w,
    function: () {
      Get.toNamed(GiftRequestView.route);
    },
  ),
  MenuTileWidget(
    assetPath: 'assets/svgs/team player.svg',
    title: 'Team Player for\na mission',
    width: 0.7.sw,
    height: 0.08.sh,
    positionTop: 0.08.sh / 2 - 0.08.sh * 0.37,
    positionLeft: 0.7.sw / 2 - 12.w,
    function: () {
      Get.toNamed(GiftRequestView.route);
    },
  ),
];
