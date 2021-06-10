import 'package:alokito_new/models/gift_giver/gift_request.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/notifications/gift_notification_controller.dart';
import 'package:alokito_new/modules/gift_receiver/gift_request_controller.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/modules/notifications/widgets/notif_popup_widget.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';

import './widgets/location_widget.dart';
import './widgets/notif_map_widget.dart';
import './widgets/requester_gift_records_widget.dart';
import './widgets/user_detail_widget.dart';
import './widgets/user_location_widget.dart';

class NotificationDetailsView extends StatelessWidget {
  static const route = 'notification_details_view';

  final GiftNotificationController controller = Get.find();

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
          // height: Get.size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/gift_details.png'),
                fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Get.height * 0.01),
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
                                lat: giftNotification
                                    .giverPosition.geopoint.latitude,
                                lng: giftNotification
                                    .giverPosition.geopoint.longitude,
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
                      giftNotification.giftRequestStatus ==
                              GiftRequestStatus.requestConfirmed
                          ? Text('Gift Confiremd by Giver')
                          : DecistionWidget(giftNotification: giftNotification),
                      NotifMapWidget(giftNotification: giftNotification),
                      _GuideLinesAndThanks(giftNotification: giftNotification),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _GuideLinesAndThanks extends StatelessWidget {
  _GuideLinesAndThanks({Key? key, required this.giftNotification})
      : super(key: key);

  GiftNotification giftNotification;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: Get.width,
      child: Column(
        children: [
          const SizedBox(height: 8),
          Row(
            children: [
              const SizedBox(width: 16),
              const Icon(FontAwesomeIcons.bullhorn),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '* Please see the ',
                              style: whiteFontStyle.copyWith(
                                  fontSize: notificationFontSize,
                                  color: Colors.black),
                            ),
                            TextSpan(
                              text: 'Guideline for Food Adding',
                              style: boldFontStyle.copyWith(
                                  color: Colors.red,
                                  fontSize: notificationFontSize),
                            ),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '* Request to follow ',
                              style: whiteFontStyle.copyWith(
                                  fontSize: notificationFontSize,
                                  color: Colors.black),
                            ),
                            TextSpan(
                              text: 'Covid - 19: Sharing & Safety Guidelines',
                              style: boldFontStyle.copyWith(
                                color: Colors.red,
                                fontSize: notificationFontSize,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              thickness: 3,
              color: Colors.grey,
            ),
          ),
          Text(
            'Thanks a lot for this noble job. For the record our earnest request is,',
            style: whiteFontStyle.copyWith(fontSize: 10, color: Colors.black),
          ),
          Text(
            "please press 'Done' after giving your gift.",
            style: whiteFontStyle.copyWith(fontSize: 10, color: Colors.black),
          ),
          const SizedBox(height: 32),
          const Text(
            'Gift',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            convertGiftType(giftNotification.giftType),
            style: boldFontStyle.copyWith(fontSize: 30),
          ),
          const Text(
            'given to',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            giftNotification.requesterName,
            style: boldFontStyle.copyWith(fontSize: 30),
          ),
          const SizedBox(height: 16),
          MaterialButton(
            color: GIFT_ADD_FORM_SUBMIT,
            shape: roundedBorder,
            onPressed: () {
              print('gift done');
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return NotifPopupWidget(giftNotification: giftNotification);
                },
              );
            },
            child: Text('Done', style: whiteFontStyle),
          ),
          const SizedBox(height: 16),
        ],
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

    giftRequestController.setGiftRequest(
        id: '${giftNotification.requesterUid}.${giftNotification.giftId}');

    print(giftRequestController.giftRequest.value);

    return Obx(
      () => giftRequestController.giftRequest.value.map(
        (value) => value.giftRequestStatus == GiftRequestStatus.requestConfirmed
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
            : value.giftRequestStatus ==
                    GiftRequestStatus.requestCanceledByGiver
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: GIFT_ADD_FORM_SUBMIT,
                        onPressed: () {},
                        child: Text(
                          'Request Denied By You',
                          style: boldFontStyle.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                : value.giftRequestStatus ==
                        GiftRequestStatus.requestCanceledByRequester
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: GIFT_ADD_FORM_SUBMIT,
                            onPressed: () {},
                            child: Text(
                              'Request Canceled By ${value.requesterName}',
                              style:
                                  boldFontStyle.copyWith(color: Colors.white),
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
                              giftRequestController.giftRequestService
                                  .changeRequestStatus(
                                      giftRequestStatus:
                                          GiftRequestStatus.requestConfirmed,
                                      giftNotification: giftNotification);
                              giftNotificationController.giftNotificationService
                                  .changeRequestStatus(
                                giftRequestStatus:
                                    GiftRequestStatus.requestConfirmed,
                                giftRequestStatusForGiver:
                                    GiftRequestStatus.requestConfirmed,
                                giftRequestStatusForRequester:
                                    GiftRequestStatus.requestConfirmed,
                                giftNotification: giftNotification,
                                giftNotificationTypeForGiver:
                                    GiftNotificationType.packageConfirmed,
                                giftNotificationTypeForRequester:
                                    GiftNotificationType.packageConfirmed,
                              );
                            },
                            child: Text(
                              'Accept for Confirmation',
                              style:
                                  boldFontStyle.copyWith(color: Colors.white),
                            ),
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: GIFT_ADD_FORM_SUBMIT,
                            onPressed: () {},
                            child: Text(
                              'Deny',
                              style:
                                  boldFontStyle.copyWith(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
        loading: (_) => Center(child: CircularProgressIndicator()),
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
