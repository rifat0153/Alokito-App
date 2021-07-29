import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_controller.dart';
import 'package:alokito_new/modules/notification/gift_giver/gift_giver_notification_details_view.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftGiverNotificationView extends StatelessWidget {
  GiftGiverNotificationView({Key? key, required this.notification}) : super(key: key);

  final MyNotification notification;

  final GiftReceiverController giftReceiverController = Get.find<GiftReceiverController>();

  @override
  Widget build(BuildContext context) {
    var difference = DateTime.now()
        .difference(DateTime.fromMillisecondsSinceEpoch(notification.createdAt.millisecondsSinceEpoch))
        .inHours;

    return FutureBuilder<GiftReceiver>(
      future: giftReceiverController.getGift(notification.releatedDocId),
      builder: (BuildContext context, AsyncSnapshot<GiftReceiver> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: Text('Please wait its loading...'));
        } else {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return _buildNotificationTile(snapshot, difference);
          }
        }
      },
    );
  }

  Container _buildNotificationTile(AsyncSnapshot<GiftReceiver> snapshot, int difference) {
    return Container(
      width: Get.width,
      height: 100,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Row(
            children: [
              Container(
                height: 100,
                width: Get.width * 0.2,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5),
                    ),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 3.0),
                    ],
                    color: Colors.blue),
                child: snapshot.data == null
                    ? const SizedBox()
                    : ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          topLeft: Radius.circular(5),
                        ),
                        child: Image.network(snapshot.data!.giftGiver.imageUrl, fit: BoxFit.cover)),
              ),
              snapshot.data == null
                  ? const SizedBox()
                  : Expanded(
                      child: GestureDetector(
                        onTap: () =>
                            Get.to(() => GiftGiverNotificationDetailsView(giftReceiver: snapshot.data)),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 3.0),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                MyText(
                                  notification.text,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  maxLines: 2,
                                  textAlign: TextAlign.start,
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    MyText('$difference hours ago', fontSize: 12),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
            ],
          )),
    );
  }
}
