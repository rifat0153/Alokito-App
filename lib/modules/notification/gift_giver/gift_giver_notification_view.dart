import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/gift_receiver/controllers/gift_receiver_controller.dart';
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

    return FutureBuilder<GiftRequestNotificationUnion>(
      future: Future.delayed(Duration(seconds: 1)),
      builder: (BuildContext context, AsyncSnapshot<GiftRequestNotificationUnion> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: Text('Please wait its loading...'));
        } else {
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return snapshot.data!.when(
                dataa: (dataa) => _buildNotificationTile(dataa, difference),
                loading: () => const CircularProgressIndicator(),
                error: (error) => Text(error.toString()));
          }
        }
      },
    );
  }

  Container _buildNotificationTile(GiftRequest snapshot, int difference) {
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
                      bottomLeft: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 3.0),
                    ],
                    color: Colors.blue),
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                    child: Image.network(snapshot.gift.imageUrl, fit: BoxFit.cover)),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => Get.to(() => GiftGiverNotificationDetailsView(giftReceiver: snapshot)),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
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
