import 'package:alokito_new/modules/notifications/gift_notification_controller.dart';
import 'package:alokito_new/modules/gift_request/gift_request_controller.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:alokito_new/modules/notifications/notification_view.dart';
import './widgets/location_widget.dart';
import './widgets/notif_map_widget.dart';
import './widgets/requester_gift_records_widget.dart';
import './widgets/user_detail_widget.dart';
import './widgets/user_location_widget.dart';
import 'package:alokito_new/widgets/gift_giver/user_joining_distance_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';

class NotificationDetailsView extends StatelessWidget {
  static const route = 'notification_details_view';

  GiftNotificationController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    GiftNotification giftNotification =
        controller.giftNotificationList[controller.notificationIndex.value];

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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UserDetailWidget(
                          imageUrl: giftNotification.giverImageUrl,
                          userJoinedAt: giftNotification.giverJoinedAt,
                          userName: giftNotification.giverName,
                        ),
                        UserLocationWidget(
                          giftNotification: giftNotification,
                          rating: giftNotification.giverAvgRating.toInt(),
                          lat: giftNotification.giverPosition.geopoint.latitude,
                          lng:
                              giftNotification.giverPosition.geopoint.longitude,
                        ),
                      ],
                    ),
                  ],
                ),
                StyledContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LocationWidget(giftNotification: giftNotification),
                      RequesterGiftRecords(),
                    ],
                  ),
                ),
                DecistionWidget(giftNotification: giftNotification),
                NotifMapWidget(giftNotification: giftNotification),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DecistionWidget extends StatelessWidget {
  DecistionWidget({required this.giftNotification});
  final GiftNotification giftNotification;
  final GiftNotificationController giftNotificationController = Get.find();
  final GiftRequestController giftRequestController =
      Get.put(GiftRequestController());

  @override
  Widget build(BuildContext context) {
    var index = giftNotificationController.giftNotificationList
        .indexOf(giftNotification);

    return Obx(
      () => giftNotificationController
              .giftNotificationList[
                  giftNotificationController.notificationIndex.value]
              .giftConfirmed
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: GIFT_ADD_FORM_SUBMIT,
                  onPressed: () {},
                  child: Text(
                    'Request Accepted',
                    style: boldFontStyle.copyWith(color: Colors.white),
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: GIFT_ADD_FORM_SUBMIT,
                  onPressed: () {
                    print('accepting request');
                    giftRequestController.giftRequestService
                        .changeRequestStatus(
                            decision: true, giftNotification: giftNotification);
                    giftNotificationController.giftNotificationService
                        .changeRequestStatus(
                            decision: true, giftNotification: giftNotification);
                  },
                  child: Text(
                    'Accept for Confirmation',
                    style: boldFontStyle.copyWith(color: Colors.white),
                  ),
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: GIFT_ADD_FORM_SUBMIT,
                  onPressed: () {},
                  child: Text(
                    'Denied',
                    style: boldFontStyle.copyWith(color: Colors.white),
                  ),
                )
              ],
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
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
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
