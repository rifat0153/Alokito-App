import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_controller.dart';
import 'package:alokito_new/modules/notification/gift_giver/gift_giver_notification_details_view.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextNotificationWidget extends StatefulWidget {
  const TextNotificationWidget({Key? key, required this.notification}) : super(key: key);

  final MyNotification notification;

  @override
  _TextNotificationWidgetState createState() => _TextNotificationWidgetState();
}

class _TextNotificationWidgetState extends State<TextNotificationWidget> {
  @override
  void initState() {
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
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    topLeft: Radius.circular(5),
                  ),
                  child: Image.network(
                    '',
                    fit: BoxFit.cover,
                    errorBuilder: (_, obj, st) {
                      return SizedBox();
                    },
                  )),
            ),
            Expanded(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        widget.notification.text,
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
          ],
        ),
      ),
    );
  }
}
