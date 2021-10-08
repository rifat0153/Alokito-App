import '../../../../models/gift_ask/gift_ask_giver.dart';

import '../../../../models/notification/notification.dart';
import '../../../gift_ask_giver_details/controller/gift_ask_giver_controller.dart';
import 'gift_ask_notification_details_view.dart';
import '../../../../shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GiftAskNotificationView extends StatelessWidget {
  GiftAskNotificationView({Key? key, required this.notification}) : super(key: key);

  final MyNotification notification;
  final GiftAskGiverDetailsController giftAskGiverController = Get.find<GiftAskGiverDetailsController>();

  @override
  Widget build(BuildContext context) {
    var difference = DateTime.now()
        .difference(DateTime.fromMillisecondsSinceEpoch(notification.createdAt.millisecondsSinceEpoch))
        .inHours;

    return Container(
      width: Get.width,
      height: 100,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: FutureBuilder<GiftAskGiver>(
          future: giftAskGiverController.getGift(notification.relatedDocId), // function where you call your api
          builder: (BuildContext context, AsyncSnapshot<GiftAskGiver> snapshot) {
            // AsyncSnapshot<Your object type>
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: Text('Please wait its loading...'));
            } else {
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                return _buildNotificationTile(snapshot, difference);
              }
            }
          },
        ),
      ),
    );
  }

  GestureDetector _buildNotificationTile(AsyncSnapshot<GiftAskGiver> snapshot, int difference) {
    return GestureDetector(
      onTap: () {
        Get.to(() => GiftAskNotificationDetailsView(giftAskGiver: snapshot.data!));
      },
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
              child: snapshot.data != null
                  ? ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5),
                      ),
                      // Todo add realted gist ask notification img
                      child: Image.asset('assets/images/map-dot (1).png', fit: BoxFit.cover))
                  : const SizedBox()),
          snapshot.data == null
              ? Container()
              : Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => GiftAskNotificationDetailsView(giftAskGiver: snapshot.data!));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 10.0.r),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: Column(
                          children: [
                            MyText(
                              notification.text,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              maxLines: 2,
                              // textAlign: TextAlign.start,
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                MyText('$difference hours ago', fontSize: 12.sp),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
