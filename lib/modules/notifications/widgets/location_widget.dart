import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  LocationWidget({required this.giftNotification});

  GiftNotification giftNotification;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Location', style: boldFontStyle),
          Text(giftNotification.giftArea),
        ],
      ),
    );
  }
}
