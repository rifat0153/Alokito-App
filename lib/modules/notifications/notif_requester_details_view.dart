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
          child: Column(
            children: [
              SizedBox(height: 60),
              Expanded(
                child: Container(
                  // height: Get.height - ,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 8),
                        _UserAndGiverDetails(
                            giftType: giftType,
                            giftNotification: giftNotification),
                        StyledContainer(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LocationWidget(
                                  giftNotification: giftNotification),
                            ],
                          ),
                        ),
                        StyledContainer(
                          child: NotifMapWidget(
                              giftNotification: giftNotification),
                        ),
                        StyledContainer(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 8),
                            child: Text(
                              'Contact this person',
                              style: boldFontStyle,
                            ),
                          ),
                        ),
                        _ContactWidget(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text('Status', style: boldFontStyle),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Text('On the way',
                              style: boldFontStyle.copyWith(fontSize: 30)),
                        ),
                        _GuideLines(),
                        const SizedBox(height: 16),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: GIFT_ADD_FORM_SUBMIT,
                          onPressed: () {
                            print('Gift Request Canceled ');
                            controller.cancelGiftRequestByRequester(
                                giftNotification: giftNotification);
                          },
                          child: Text('Cancel Request',
                              style: whiteFontStyle.copyWith(
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
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

class _ContactWidget extends StatelessWidget {
  const _ContactWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StyledContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
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
      ),
    );
  }
}

class _UserAndGiverDetails extends StatelessWidget {
  const _UserAndGiverDetails({
    Key? key,
    required this.giftType,
    required this.giftNotification,
  }) : super(key: key);

  final String giftType;
  final GiftNotification giftNotification;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: Get.width - 40,
            color: GIFT_ADD_FORM_COLOR,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                  lat: giftNotification.giverPosition.geopoint.latitude,
                  lng: giftNotification.giverPosition.geopoint.longitude,
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
                  rating: giftNotification.requesterAvgRating.toInt(),
                  lat: giftNotification.requesterPosition.geopoint.latitude,
                  lng: giftNotification.requesterPosition.geopoint.longitude,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _GuideLines extends StatelessWidget {
  const _GuideLines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: Get.width,
      child: Row(
        children: [
          SizedBox(width: 16),
          Icon(FontAwesomeIcons.bullhorn),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
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
