import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../models/gift_ask/gift_ask.dart';
import '../../../shared/styles.dart';

class GiftAskDetailUserNameAndLocationWidget extends StatelessWidget {
  const GiftAskDetailUserNameAndLocationWidget({
    Key? key,
    required this.giftAsk,
    required this.distance,
  }) : super(key: key);

  final GiftAsk giftAsk;
  final double distance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                minRadius: 30,
                backgroundImage: NetworkImage(
                  giftAsk.user.imageUrl,
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(giftAsk.user.userName, style: boldFontStyle.copyWith(fontSize: 18)),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      SizedBox(
                          width: 120,
                          child: Text(giftAsk.area, overflow: TextOverflow.ellipsis, style: boldFontStyle)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 30),
                          const Icon(FontAwesomeIcons.mapMarker),
                          Text('$distance km away'),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              for (var i = 0; i < 5; i++)
                giftAsk.user.averageRating.toInt() > i
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
      ),
    );
  }
}