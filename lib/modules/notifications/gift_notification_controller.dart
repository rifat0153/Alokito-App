import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/gift_giver/gift_request.dart';
import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/modules/notifications/gift_notification_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftNotificationController extends GetxController {
  GiftNotificationService giftNotificationService = GiftNotificationService();
  RxList<GiftNotification> giftNotificationList = RxList.empty();
  RxList<GiftNotification> giftNotList = RxList.empty();
  RxInt notificationIndex = 0.obs;
  Rx<MyPosition> giftPosition = const MyPosition(geohash: 'a', geopoint: GeoPoint(0, 0)).obs;
  RxInt totalNotifications = 0.obs;

  RxBool loading = false.obs;
  RxString feedbakcForRequester = ''.obs;
  RxString feedbakcForGiver = ''.obs;
  RxInt ratingForRequester = 0.obs;
  RxInt ratingForGiver = 0.obs;

  @override
  void onInit() {
    getNotData();
    totalNotifications.bindStream(giftNotificationService.streamGiftNotificationStatus());

    super.onInit();
  }

  @override
  void onClose() {
    giftNotificationList.close();
    giftNotList.close();
    totalNotifications.close();
    super.onClose();
  }

  Future<void> getNotData() async {
    giftNotList.value = await giftNotificationService.getGiftNotification();
  }

  void bindNotificationStream() {
    getNotData();
    giftNotificationList.bindStream(giftNotificationService.streamGiftNotification());
    totalNotifications.bindStream(giftNotificationService.streamGiftNotificationStatus());
  }

  // Future<void> updateUserRatingAndInfo(
  //     {required String userId,
  //     required double rating,
  //     required bool giftReceiver}) async {
  //   await giftNotificationService.updateUserInfo(
  //       userId: userId, giftReceiver: giftReceiver, rating: rating);
  // }

  Future<void> addDeliveryNotifications({
    required GiftNotification giftNotification,
  }) async {
    loading.value = true;

    await giftNotificationService.giftRequestDoneNotif(giftNotification: giftNotification);

    await giftNotificationService.updateUserInfo(
        userId: giftNotification.requesterUid, giftReceiver: true, rating: ratingForRequester.toDouble());

    await giftNotificationService.updateUserInfo(
        userId: giftNotification.giverUid, giftReceiver: false, rating: ratingForRequester.toDouble());

    Get.back();
  }

  Future<bool> cancelGiftRequestByRequester({required GiftNotification giftNotification}) async {
    await giftNotificationService.changeRequestStatus(
        giftRequestStatus: GiftRequestStatus.requestCanceledByRequester,
        giftNotificationTypeForGiver: GiftNotificationType.packageCanceledByRequester,
        giftNotificationTypeForRequester: GiftNotificationType.packageCanceledByRequester,
        giftRequestStatusForGiver: GiftRequestStatus.requestCanceledByRequester,
        giftRequestStatusForRequester: GiftRequestStatus.requestCanceledByRequester,
        giftNotification: giftNotification);

    return true;
  }

  Future<void> resetNotificationStatus() async {
    await giftNotificationService.resetNotificationStatus();
  }

  Future<bool> addNotificationForGiftRequest({
    required GiftGiver giftGiver,
    required String message,
    required String requesterImageUrl,
    bool giftCanceledByRequester = false,
  }) async {
    AuthController authController = Get.find<AuthController>();

    GiftNotification giftNotification = GiftNotification(
      requesterName: authController.currentUser.value.userName,
      giftImageUrl: giftGiver.imageUrl,
      giftId: giftGiver.id ?? '',
      giftPickUpTime: giftGiver.pickUpTime,
      notificationFor: giftGiver.uid,
      giftRequestStatus: GiftRequestStatus.requestPedning,
      giftPosition: giftGiver.position,
      notificationForList: [giftGiver.uid, FirebaseAuth.instance.currentUser?.uid ?? ''],
      requesterPosition: authController.currentUser.value.position,
      requesterAvgRating: authController.currentUser.value.averageRating,
      requesterRatingSum: authController.currentUser.value.ratingSum,
      requesterTotRating: authController.currentUser.value.totalRating,
      giverPosition: giftGiver.userPosition,
      giverAvgRating: giftGiver.userAvgRating,
      giverRatingSum: giftGiver.userRatingSum,
      giverTotRating: giftGiver.userTotRating,
      requesterUid: FirebaseAuth.instance.currentUser?.uid ?? '',
      requesterImageUrl: requesterImageUrl,
      giverImageUrl: giftGiver.userImageUrl,
      giftArea: giftGiver.area,
      giftLocation: giftGiver.location,
      giverJoinedAt: giftGiver.userCreatedAt,
      requesterJoinedAt: authController.currentUser.value.createdAt,
      requesterMessage: message,
      giverName: giftGiver.userName,
      giverUid: giftGiver.uid,
      giftType: giftGiver.giftType,
      notificationType: GiftNotificationType.packageRequested,
      createdAt: Timestamp.now(),
    );

    var result = await giftNotificationService.addGiftNotification(giftNotification: giftNotification);
    return result;
  }
}
