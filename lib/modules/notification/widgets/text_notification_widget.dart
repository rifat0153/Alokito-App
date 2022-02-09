import '../../../models/gift_request/gift_request.dart';
import '../../../models/notification/notification.dart';
import '../gift_giver/gift_giver_notification_details_view.dart';
import '../../../shared/widget/my_text.dart';
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
                child: Image.asset('assets/images/map-dot (1).png', fit: BoxFit.cover),
              ),
            ),
            Expanded(
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
