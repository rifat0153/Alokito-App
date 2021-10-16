import 'package:alokito_new/core/date/date_helper.dart';
import 'package:alokito_new/core/location/location_helper.dart';
import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class RequesterDetailWidget extends StatelessWidget {
  const RequesterDetailWidget({
    Key? key,
    required this.giftRequest,
  }) : super(key: key);

  final GiftRequest? giftRequest;

  @override
  Widget build(BuildContext context) {
    final requesterIdCreatedAgo = DateHelper.findTimeDifference(DateTime.now(), giftRequest!.requester.createdAt);

    final distanceBetweenRequesterAndGiver = LocationHelper.determineDistance(
      giftRequest!.gift.geometry.coordinates.last,
      giftRequest!.gift.geometry.coordinates.first,
      giftRequest!.requester.geometry.coordinates.last,
      giftRequest!.requester.geometry.coordinates.first,
    );

    return Column(
      children: [
        SizedBox(
          width: Get.width * 0.7,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Expanded(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(giftRequest!.requester.imageUrl),
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
                      MyText(giftRequest!.requester.userName, fontWeight: FontWeight.bold),
                      const SizedBox(height: 8),
                      MyText('Joined $requesterIdCreatedAgo months ago'),
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
                giftRequest!.requester.averageRating.toInt() > i
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
    );
  }
}
