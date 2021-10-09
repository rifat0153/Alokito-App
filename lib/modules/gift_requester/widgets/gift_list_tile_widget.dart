import 'package:alokito_new/models/gift/gift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../shared/config.dart';
import '../../gift_requester_details/views/gift_requester_details_view.dart';
import '../controllers/gift_requester_controller.dart';

class GiftListTileWidget extends StatelessWidget {
  const GiftListTileWidget({
    Key? key,
    required this.controller,
    required this.giftList,
    required this.index,
  }) : super(key: key);

  final GiftRequesterController controller;
  final List<Gift> giftList;
  final int index;

  @override
  Widget build(BuildContext context) {
    final String giftType = 'giftType';

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: GestureDetector(
        onTap: () => Get.to(
          () => GiftRequesterDetailsView(gift: giftList[index]),
        ),
        child: Container(
          // height: 100.h,
          decoration: BoxDecoration(
            color: giftAddFormColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: giftAddFormColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                width: 100.w,
                height: 100.h,
                child: Hero(
                  tag: giftList[index].id!,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.network(
                      giftList[index].imageUrl,
                      errorBuilder: (_, obj, st) {
                        return const SizedBox();
                      },
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            giftList[index].giftDetails,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(giftList[index].user != null ? giftList[index].user!.userName : ''),
                          // Text( giftList[index].user != null?  giftList[index].user!.userName : ''),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text(giftList[index].area, softWrap: true), SizedBox(width: 8.w)],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}