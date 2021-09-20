import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/gift_giver/gift.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
     this.horizontalPadding = 16,
     this.verticalPadding = 16,
    required this.giftGiver,
  }) : super(key: key);

  final double horizontalPadding;
  final double verticalPadding;
  final Gift giftGiver;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      child: SizedBox(
        height: 200,
        width: Get.size.width * 0.9,
        child: Hero(
          tag: giftGiver.id!,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                giftGiver.imageUrl,
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}
