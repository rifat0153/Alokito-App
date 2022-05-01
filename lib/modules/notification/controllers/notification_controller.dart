import 'package:alokito_new/models/gift_ask_request.dart/gift_ask_request.dart';
import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/notification/notification.dart';
import '../../../shared/widget/my_bottomsheets.dart';
import '../../auth/controllers/auth_controller.dart';
import '../service/notification_service.dart';

class NotificationController extends GetxController {
  NotificationController(this.notificationService);

  final NotificationService notificationService;

  final firstFetch = true.obs;
  final allFethced = false.obs;
  final loading = false.obs;
  final notificationList = const MyNotificationListStatus.loading().obs;

  final page = 0.obs;

  final ScrollController scrollController = ScrollController();

  @override
  Future onInit() async {
    super.onInit();

    scrollController.addListener(() async {
      if (scrollController.position.atEdge && !allFethced.value) {
        if (scrollController.position.pixels != 0) {
          final pixels = scrollController.position.maxScrollExtent;

          // Get new notification
          await getNotifications();

          // Animate down the new laoded notification list
          await scrollController.animateTo(
            pixels + 320,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        }
      }
    });

    await getNotifications();
  }

  @override
  void onClose() {
    super.onClose();

    scrollController.dispose();
  }

  // Update Local Notification by GiftRequest/GiftASkRequest Id
  Future<void> updateLocalNotificationForRequests({
    GiftRequest? giftRequest,
    // GiftRequestStatus? status,
    GiftAskRequest? giftAskRequest,
    // GiftAskRequestStatus? giftAskRequestStatus,
  }) async {
    final List<MyNotification> existingList = await notificationList.value.maybeWhen(
      data: (list) => list,
      orElse: () => [],
    );

    final updatedList = existingList.map((notif) {
      // if GiftRequest doc is send update that
      if (giftRequest != null) {
        if (notif.relatedDocId == giftRequest.id) {
          // return notif.copyWith(giftRequestDoc: notif.giftRequestDoc?.copyWith(giftRequestStatus: status!));
          return notif.copyWith(giftRequestDoc: giftRequest);
        } else {
          return notif;
        }
      }
      // if GiftAskRequest doc is send update that
      else if (giftAskRequest != null) {
        if (notif.relatedDocId == giftAskRequest.id) {
          // return notif.copyWith(
          //     giftAskRequestDoc: notif.giftAskRequestDoc?.copyWith(giftAskRequestStatus: giftAskRequestStatus!));
          return notif.copyWith(giftAskRequestDoc: giftAskRequest);
        } else {
          return notif;
        }
      }
      // if no doc is send Return notfi as it is
      else {
        return notif;
      }
    }).toList();

    notificationList.value = MyNotificationListStatus.data(updatedList);
  }

  // Retrive notifications
  Future<void> getNotifications() async {
    loading.value = true;
    page.value = page.value + 1;

    final res = await notificationService.getNotifications(
      userId: Get.find<AuthController>().currentUserInfo.value.maybeWhen(
            data: (user) => user.id ?? '',
            orElse: () => '',
          ),
      page: page.value,
      limit: 7,
    );

    if (firstFetch.value) {
      notificationList.value = res;
    } else {
      final List<MyNotification> existingList =
          notificationList.value.maybeWhen(data: (list) => list, orElse: () => []);

      var newLoadedData = <MyNotification>[];

      res.maybeWhen(
          data: (newData) {
            newLoadedData = newData;

            // All data fethced, since new request returned less than 7 value
            if (newData.length < 7) {
              allFethced.value = true;
            }

            final newList = [...existingList, ...newLoadedData];

            notificationList.value = MyNotificationListStatus.data(newList);
          },
          error: (e) {
            MySnackbar.showErrorSnackbar(e);
            page.value = page.value - 1;
          },
          orElse: () {});
    }

    firstFetch.value = false;
    loading.value = false;
  }
}
