import 'package:alokito_new/modules/gift/views/gift_view.dart';
import 'package:alokito_new/modules/gift_requester/views/gift_requester_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuTileWidget extends StatelessWidget {
  const MenuTileWidget(
      {Key? key,
      required this.assetPath,
      required this.title,
      required this.width,
      required this.height,
      required this.function})
      : super(key: key);

  final String assetPath;
  final String title;
  final double width;
  final double height;
  final Callback function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: SizedBox(
        height: height,
        width: width,
        child: Image.asset(
          assetPath,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

final List<MenuTileWidget> menuListTile = [
  // Gift Giver
  MenuTileWidget(
    assetPath: 'assets/images/gift-giver.png',
    title: 'GiftGiver',
    width: 0.7.sw,
    height: 0.09.sh,
    function: () {
      Get.toNamed(GiftView.route);
    },
  ),
  // Gift Receiver
  MenuTileWidget(
    assetPath: 'assets/images/gift-reciever.png',
    title: 'GiftGiver',
    width: 0.7.sw,
    height: 0.11.sh,
    function: () {
      Get.toNamed(GiftRequesterView.route);
    },
  ),
  MenuTileWidget(
    assetPath: 'assets/images/community-hero.png',
    title: 'GiftGiver',
    width: 0.7.sw,
    height: 0.11.sh,
    function: () {
      Get.toNamed(GiftRequesterView.route);
    },
  ),
  MenuTileWidget(
    assetPath: 'assets/images/team-player.png',
    title: 'GiftGiver',
    width: 0.7.sw,
    height: 0.11.sh,
    function: () {
      Get.toNamed(GiftRequesterView.route);
    },
  ),
];
