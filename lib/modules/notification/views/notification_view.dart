import 'package:alokito_new/core/date/date_service.dart';
import 'package:alokito_new/modules/gift_ask_request_detail/views/gift_ask_request_detail_view.dart';
import 'package:alokito_new/modules/gift_request_detail/views/gift_request_detail_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../models/notification/notification.dart';
import '../../../shared/widget/skeleton_widget.dart';
import '../../../shared/widget/my_text.dart';
import '../controllers/notification_controller.dart';

class NotificationView extends StatelessWidget {
  NotificationView({Key? key}) : super(key: key);
  static const route = '/NotificationView';

  final NotificationController controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    final notificationController = Get.find<NotificationController>();

    return SkeletonWidget(
      titleWidget: const MyText('Notification', fontWeight: FontWeight.bold),
      assetPath: 'assets/images/notification-background.png',
      child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            _buildNotificationTile(notificationController),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationTile(NotificationController notificationController) {
    return Obx(
      () => notificationController.notificationList.value.when(
          data: (notificationList) {
            return Expanded(
              child: ListView.builder(
                controller: controller.scrollController,
                padding: EdgeInsets.zero,
                itemCount: controller.loading.value && !controller.firstFetch.value ? notificationList.length + 1 : notificationList.length,
                itemBuilder: (_, i) {
                  if (controller.loading.value && !controller.firstFetch.value && i == notificationList.length) {
                    return const CupertinoActivityIndicator(radius: 15);
                  }
                  return NotificationTile(
                    key: ValueKey(i),
                    notification: notificationList[i],
                  );
                },
              ),
            );
          },
          empty: () => const Center(
                child: Text('No Notification'),
              ),
          loading: () => const LinearProgressIndicator(),
          error: (err) => Center(child: Text(err))),
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({required this.notification, Key? key}) : super(key: key);

  final MyNotification notification;

  @override
  Widget build(BuildContext context) {
    if (notification.notificationType == 'giftRequest') {
      print(notification.giftRequestDoc);
      // return Text('Gift Request' + notification.giftRequestDoc!.id.toString());
      return _buildGiftRequestNotificationTile(notification, context);
    }
    if (notification.notificationType == 'giftAskRequest') {
      print(notification.giftAskRequestDoc);

      // return Text('Gift Ask Request' + notification.giftAskRequestDoc!.id.toString());
      return _buildGiftAskRequestNotificationTile(notification, context);
    }
    if (notification.notificationType == 'text') {}

    return _buildTextNotificationTile(notification);
  }

  // Widget _buildTextNotificationTile(MyNotification notification, BuildContext context) {
  //   final String timeDiff = DateHelper.findTimeDifference(DateTime.now(), notification.createdAt);

  //   return notification.giftAskRequestDoc != null
  //       ? GestureDetector(
  //           onTap: () {
  //             // Todo
  //           },
  //           child: Padding(
  //             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  //             child: ClipRRect(
  //               borderRadius: BorderRadius.circular(10),
  //               child: Container(
  //                 height: 100,
  //                 decoration: const BoxDecoration(
  //                   color: Colors.white,
  //                 ),
  //                 child: Row(
  //                   children: [
  //                     SizedBox(
  //                       width: 100,
  //                       height: 100,
  //                       child: Image.asset(
  //                         '',
  //                         fit: BoxFit.cover,
  //                         errorBuilder: (_, __, s) {
  //                           return SizedBox();
  //                         },
  //                       ),
  //                     ),
  //                     Expanded(
  //                       child: Padding(
  //                         padding: const EdgeInsets.all(8),
  //                         child: Column(
  //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             MyText(
  //                               notification.text,
  //                               maxLines: 2,
  //                             ),
  //                             const Spacer(),
  //                             MyText('$timeDiff ago', fontSize: 15.sp),
  //                           ],
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //         )
  //       : Container();
  // }

  Padding _buildTextNotificationTile(MyNotification notification) {
    final String timeDiff = DateService.findTimeDifference(DateTime.now(), notification.createdAt);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        notification.text,
                        maxLines: 2,
                      ),
                      const Spacer(),
                      MyText('$timeDiff ago', fontSize: 15.sp),
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

  Widget _buildGiftAskRequestNotificationTile(MyNotification notification, BuildContext context) {
    final String timeDiff = DateService.findTimeDifference(DateTime.now(), notification.createdAt);

    return notification.giftAskRequestDoc != null
        ? GestureDetector(
            onTap: () {
              Get.toNamed(GiftAskRequestDetailView.route, arguments: notification.giftAskRequestDoc);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network(
                          notification.giftAskRequestDoc!.giftAsk.imageUrl ?? '',
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, s) {
                            return SizedBox();
                          },
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                notification.text,
                                maxLines: 2,
                              ),
                              const Spacer(),
                              MyText('$timeDiff ago', fontSize: 15.sp),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        : _buildTextNotificationTile(notification);
  }

  Widget _buildGiftRequestNotificationTile(MyNotification notification, BuildContext context) {
    final String timeDiff = DateService.findTimeDifference(DateTime.now(), notification.createdAt);

    return notification.giftRequestDoc != null
        ? GestureDetector(
            onTap: () {
              Get.toNamed(GiftRequestDetailView.route, arguments: notification.giftRequestDoc);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network(
                          notification.giftRequestDoc!.gift.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                notification.text,
                                maxLines: 2,
                              ),
                              const Spacer(),
                              MyText('$timeDiff ago', fontSize: 15.sp),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        : _buildTextNotificationTile(notification);
  }
}
