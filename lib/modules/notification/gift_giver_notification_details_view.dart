import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/shared/skeleton_widget.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftGiverNotificationDetailsView extends StatelessWidget {
  GiftGiverNotificationDetailsView({Key? key, required this.giftReceiver}) : super(key: key);

  GiftReceiver? giftReceiver;

  @override
  Widget build(BuildContext context) {
    var difference = DateTime.now()
        .difference(DateTime.fromMillisecondsSinceEpoch(giftReceiver!.createdAt.millisecondsSinceEpoch))
        .inDays;

    return SkeletonWidget(
      titleWidget: MyText('Notification - Requester Details', fontSize: 15),
      assetPath: 'assets/images/gift_details.png',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: context.height * 0.08),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: Get.width - 50,
                    height: 60,
                    child: Row(
                      children: [
                        Flexible(
                          child: Column(
                            children: [
                              Expanded(
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(giftReceiver!.requester.imageUrl!),
                                  radius: 30,
                                ),
                              ),
                              Row(
                                children: [
                                  for (var i = 0; i < 5; i++)
                                    giftReceiver!.requester.averageRating.toInt() > i
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
                        ),
                        Flexible(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MyText(giftReceiver!.requester.userName, fontWeight: FontWeight.bold),
                                const SizedBox(height: 8),
                                MyText('Joined $difference months ago'),
                              ],
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 1000),
                  Text(
                    "Don't worry...",
                    style: boldFontStyle.copyWith(fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            height: Get.height * 0.08,
          )
        ],
      ),
    );
  }
}
