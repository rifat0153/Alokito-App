import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_controller.dart';
import 'package:alokito_new/modules/notification/gift_giver_notification_details_view.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftGiverNotification extends StatefulWidget {
  GiftGiverNotification({Key? key, required this.notification}) : super(key: key);

  MyNotification notification;

  @override
  _GiftGiverNotificationState createState() => _GiftGiverNotificationState();
}

class _GiftGiverNotificationState extends State<GiftGiverNotification> {
  GiftReceiverController giftReceiverController = Get.find<GiftReceiverController>();

  GiftReceiver? giftReceiver;

  Future<void> getGift() async {
    var data = await giftReceiverController.getGift(widget.notification.releatedDocId);
    setState(() {
      giftReceiver = data;
    });
  }

  @override
  void initState() {
    getGift();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var difference = DateTime.now()
        .difference(DateTime.fromMillisecondsSinceEpoch(widget.notification.createdAt.millisecondsSinceEpoch))
        .inHours;

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
              child: giftReceiver == null
                  ? Container()
                  : ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5),
                      ),
                      child: Image.network(giftReceiver!.requester.imageUrl!, fit: BoxFit.cover)),
            ),
            giftReceiver == null
                ? Text('empty')
                : Expanded(
                    child: GestureDetector(
                      onTap: () => Get.to(() => GiftGiverNotificationDetailsView(giftReceiver: giftReceiver)),
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
                              MyText(widget.notification.text, fontWeight: FontWeight.bold, fontSize: 13),
                              Spacer(),
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
        ),
      ),
    );
  }
}
