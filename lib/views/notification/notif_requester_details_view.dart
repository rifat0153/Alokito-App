import 'package:alokito_new/controller/gift/gift_notification_controller.dart';
import 'package:alokito_new/controller/gift/gift_request_controller.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:alokito_new/views/notification/notification_view.dart';
import 'package:alokito_new/views/notification/widgets/location_widget.dart';
import 'package:alokito_new/views/notification/widgets/notif_map_widget.dart';
import 'package:alokito_new/views/notification/widgets/requester_gift_records_widget.dart';
import 'package:alokito_new/views/notification/widgets/user_detail_widget.dart';
import 'package:alokito_new/views/notification/widgets/user_location_widget.dart';
import 'package:alokito_new/widgets/gift_giver/user_joining_distance_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';
import 'dart:math' as math;

class NotifRequesterDetailsView extends StatelessWidget {
  static const route = 'notification_details_view';

  GiftNotificationController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    GiftNotification giftNotification =
        controller.giftNotificationList[controller.notificationIndex.value];

    var giftType = convertGiftType(giftNotification.giftType);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: const Text(
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
                image: AssetImage('assets/images/gift_details.png'),
                fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: Get.width - 40,
                        color: GIFT_ADD_FORM_COLOR,
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Gift'),
                            const SizedBox(height: 8),
                            Text(
                              giftType,
                              style: boldFontStyle.copyWith(fontSize: 25),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Offered By',
                              style: boldFontStyle,
                            ),
                            const SizedBox(height: 8),
                            UserDetailWidget(
                              imageUrl: giftNotification.giverImageUrl,
                              userJoinedAt: giftNotification.giverJoinedAt,
                              userName: giftNotification.giverName,
                            ),
                            UserLocationWidget(
                              giftNotification: giftNotification,
                              rating: giftNotification.giverAvgRating.toInt(),
                              lat: giftNotification
                                  .giverPosition.geopoint.latitude,
                              lng: giftNotification
                                  .giverPosition.geopoint.longitude,
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Requested By',
                              style: boldFontStyle,
                            ),
                            const SizedBox(height: 8),
                            UserDetailWidget(
                              imageUrl: giftNotification.requesterImageUrl,
                              userJoinedAt: giftNotification.requesterJoinedAt,
                              userName: giftNotification.requesterName,
                            ),
                            UserLocationWidget(
                              giftNotification: giftNotification,
                              rating:
                                  giftNotification.requesterAvgRating.toInt(),
                              lat: giftNotification
                                  .requesterPosition.geopoint.latitude,
                              lng: giftNotification
                                  .requesterPosition.geopoint.longitude,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                StyledContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LocationWidget(giftNotification: giftNotification),
                    ],
                  ),
                ),
                StyledContainer(
                  child: NotifMapWidget(giftNotification: giftNotification),
                ),
                StyledContainer(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 60,
                        width: 75,
                        decoration: BoxDecoration(
                          color: GIFT_ADD_FORM_SUBMIT,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            children: [
                              Transform.rotate(
                                angle: -math.pi / 4,
                                child: const FaIcon(
                                  FontAwesomeIcons.phoneVolume,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Text('Voice Call',
                                  style: whiteFontStyle.copyWith(fontSize: 10))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 75,
                        decoration: BoxDecoration(
                          color: GIFT_ADD_FORM_SUBMIT,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.commentDots,
                                color: Colors.white,
                                size: 30,
                              ),
                              Text('Conversation',
                                  style: whiteFontStyle.copyWith(fontSize: 10))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StyledContainer extends StatelessWidget {
  StyledContainer({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: Get.width,
        decoration: BoxDecoration(
            color: GIFT_ADD_FORM_COLOR, borderRadius: BorderRadius.circular(0)),
        child: child,
      ),
    );
  }
}
