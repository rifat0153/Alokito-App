import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/notifications/gift_notification_controller.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftDeliveredRequesterWidget extends StatelessWidget {
  GiftDeliveredRequesterWidget({
    required Key key,
    required this.giftNotificationController,
    required this.giftNotification,
    required this.index,
  }) : super(key: key);

  final int index;
  final GiftNotification giftNotification;
  final GiftNotificationController giftNotificationController;

  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    var giftType = convertGiftType(giftNotification.giftType);
    var date = DateTime.now();
    var notificationCreatedAt = DateTime.fromMillisecondsSinceEpoch(
        giftNotification.createdAt.millisecondsSinceEpoch);
    var difference = date.difference(notificationCreatedAt).inHours;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {
          giftNotificationController.notificationIndex.value = index;
        },
        child: Card(
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Image.network(
                  giftNotification.giftImageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Flexible(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          text: giftNotification.giverUid ==   'Your gift request for ',
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                                text: '$giftType',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            const TextSpan(text: ' was delivered by '),

                            giftNotification.requesterUid !=
                                    authController.auth.currentUser?.uid
                                ? TextSpan(
                                    text: giftNotification.requesterName,
                                    style: boldFontStyle)
                                : TextSpan(text: 'you', style: boldFontStyle)
                            // TextSpan(
                            //     text: '${giftNotification.giverName}',
                            //     style: const TextStyle(
                            //         fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('$difference hours ago'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
