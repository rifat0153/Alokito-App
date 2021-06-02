import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:alokito_new/views/notification/notification_view.dart';
import 'package:alokito_new/views/notification/widgets/location_widget.dart';
import 'package:alokito_new/views/notification/widgets/user_detail_widget.dart';
import 'package:alokito_new/views/notification/widgets/user_location_widget.dart';
import 'package:alokito_new/widgets/gift_giver/user_joining_distance_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';

class NotificationDetailsView extends StatelessWidget {
  static const route = 'notification_details_view';

  GiftNotification giftNotification = Get.arguments as GiftNotification;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            'Notification',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: LineIcon.arrowLeft(color: Colors.black),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/notification-background.png'),
                fit: BoxFit.fill),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.1),
              UserDetailWidget(giftNotification: giftNotification),
              UserLocationWidget(giftNotification: giftNotification),
              StyledContainer(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LocationWidget(giftNotification: giftNotification),
                  UserGiftRecords()
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class StyledContainer extends StatelessWidget {
  StyledContainer({required this.child});

  Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Container(
        width: Get.width,
        decoration: BoxDecoration(
            color: GIFT_ADD_FORM_COLOR,
            borderRadius: BorderRadius.circular(10)),
        child: child,
      ),
    );
  }
}

class UserGiftRecords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Gift offered', style: boldFontStyle),
            Text('Gift received', style: boldFontStyle),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Text(
                '0',
                textAlign: TextAlign.center,
              ),
            ),
            const Text('All time'),
            Expanded(
              child: Text(
                '0',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: FaIcon(FontAwesomeIcons.phoneVolume),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: FaIcon(FontAwesomeIcons.commentDots),
            ),
          ],
        )
      ],
    );
  }
}
