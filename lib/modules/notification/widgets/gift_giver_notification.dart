import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_controller.dart';
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
    return Container(
      width: Get.width,
      height: 100,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          children: [
            Flexible(
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5),
                    ),
                    color: Colors.blue),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                    color: Colors.grey),
                child: giftReceiver == null ? Text('empty') : Text(giftReceiver!.giftGiver.userName),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
