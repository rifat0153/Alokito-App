import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../core/date/date_service.dart';
import '../../../core/location/location_helper.dart';
import '../../../models/gift_ask_request.dart/gift_ask_request.dart';
import '../../../shared/widget/my_text.dart';

class GiftAskRequesterDetailGiverWidget extends StatelessWidget {
  const GiftAskRequesterDetailGiverWidget({
    Key? key,
    required this.giftAskRequest,
  }) : super(key: key);

  final GiftAskRequest? giftAskRequest;

  @override
  Widget build(BuildContext context) {
    final requesterIdCreatedAgo = DateService.findTimeDifference(DateTime.now(), giftAskRequest!.giver.createdAt);

    final distanceBetweenRequesterAndGiver = LocationHelper.determineDistance(
      giftAskRequest!.giftAsk.geometry.coordinates.last,
      giftAskRequest!.giftAsk.geometry.coordinates.first,
      giftAskRequest!.giver.geometry.coordinates.last,
      giftAskRequest!.giver.geometry.coordinates.first,
    ).toPrecision(1);

    return SizedBox(
      height: 100.h,
      child: Column(
        children: [
          SizedBox(
            width: Get.width,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Column(
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(giftAskRequest!.giver.imageUrl),
                          radius: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Flexible(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(giftAskRequest!.giver.userName, fontWeight: FontWeight.bold),
                        const SizedBox(height: 8),
                        MyText('Joined $requesterIdCreatedAgo ago'),
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(
            width: Get.width * 0.7,
            child: Row(
              children: [
                for (var i = 0; i < 5; i++)
                  giftAskRequest!.giver.averageRating.toInt() > i
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
                const SizedBox(width: 16),
                const Icon(FontAwesomeIcons.mapMarker),
                MyText('$distanceBetweenRequesterAndGiver km away'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
