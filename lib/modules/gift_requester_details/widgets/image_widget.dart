import 'package:alokito_new/models/gift/gift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      child: SizedBox(
        height: 250.h,
        width: 1.sw,
        child: Hero(
          tag: giftGiver.id!,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                giftGiver.imageUrl,
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
