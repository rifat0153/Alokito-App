import 'package:alokito_new/models/gift_ask/gift_ask_giver.dart';

import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/gift_ask_giver/gift_ask_giver_controller.dart';
import 'package:alokito_new/modules/notification/gift_ask/views/gift_ask_notification_details_view.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GiftAskNotificationView extends StatefulWidget {
  const GiftAskNotificationView({Key? key, required this.notification}) : super(key: key);

  final MyNotification notification;

  @override
  _GiftAskNotificationViewState createState() => _GiftAskNotificationViewState();
}

class _GiftAskNotificationViewState extends State<GiftAskNotificationView> {
  GiftAskGiverController giftAskGiverController = Get.find<GiftAskGiverController>();

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
        child: FutureBuilder<GiftAskGiver>(
          future: giftAskGiverController
              .getGift(widget.notification.releatedDocId), // function where you call your api
          builder: (BuildContext context, AsyncSnapshot<GiftAskGiver> snapshot) {
            // AsyncSnapshot<Your object type>
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: Text('Please wait its loading...'));
            } else {
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                return Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => GiftAskNotificationDetailsView(giftAskGiver: snapshot.data));
                    },
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
                            child: snapshot.data != null
                                ? ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      topLeft: Radius.circular(5),
                                    ),
                                    // Todo
                                    child: Image.asset('assets/images/map-dot (1).png', fit: BoxFit.cover))
                                : const SizedBox()),
                        snapshot.data == null
                            ? Container()
                            : Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(() => GiftAskNotificationDetailsView(giftAskGiver: snapshot.data));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey, blurRadius: 10.0.r),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0.w),
                                      child: Column(
                                        children: [
                                          MyText(
                                            widget.notification.text,
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
                  ),
                );
              }
            }
          },
        ),
      ),
    );
  }

//   Widget _buildNotificationRow(int difference, GiftAskGiver? giftAskGiver) {
//     return FutureBuilder<GiftAskGiver>(
//       future: giftAskGiverController
//           .getGift(widget.notification.releatedDocId), // function where you call your api
//       builder: (BuildContext context, AsyncSnapshot<GiftAskGiver> snapshot) {
//         // AsyncSnapshot<Your object type>
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(child: Text('Please wait its loading...'));
//         } else {
//           if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             return Center(
//               child: Text('${snapshot.data?.createdAt}'),
//             );
//           }
//         }
//       },
//     );
//   }
// }
}
