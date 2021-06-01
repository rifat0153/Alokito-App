import 'package:alokito_new/controller/auth/auth_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/gift_giver/gift_request.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/services/notification/gift_notification_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class GiftNotificationController extends GetxController {
  GiftNotificationService giftNotificationService = GiftNotificationService();
  RxList<GiftNotification> giftNotificationList = RxList.empty();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    giftNotificationList.close();
    super.onClose();
  }

  void bindNotificationStream() {
    giftNotificationList
        .bindStream(giftNotificationService.streamGiftNotification());
  }

  Future<bool> addNotificationForGiftRequest(
      {required GiftGiver giftGiver,
      required String message,
      required String requesterImageUrl}) async {
    AuthController authController = Get.find<AuthController>();

    GiftNotification giftNotification = GiftNotification(
      requesterName: authController.currentUserName.value,
      giftImageUrl: giftGiver.imageUrl,
      giftId: giftGiver.id ?? '',
      notificationFor: giftGiver.uid,
      notificationForList: [
        giftGiver.uid,
        FirebaseAuth.instance.currentUser?.uid ?? ''
      ],
      requesterAvgRating: authController.currentUserRating.value,
      requesterRatingSum: authController.currentUserRatingSum.value,
      requesterTotRating: authController.currentUserTotalRating.value,
      giverAvgRating: giftGiver.userAvgRating,
      giverRatingSum: giftGiver.userRatingSum,
      giverTotRating: giftGiver.userTotRating,
      requesterUid: FirebaseAuth.instance.currentUser?.uid ?? '',
      requesterImageUrl: requesterImageUrl,
      giverImageUrl: giftGiver.userImageUrl,
      giftArea: giftGiver.area,
      giftLocation: giftGiver.location,
      giverJoinedAt: giftGiver.userCreatedAt,
      requesterJoinedAt: authController.currentUserCreatedAt.value,
      requesterMessage: message,
      giverName: giftGiver.userName,
      giverUid: giftGiver.uid,
      giftType: giftGiver.giftType,
      notificationType: GiftNotificationType.packageRequested,
      createdAt: Timestamp.now(),
    );

    var result = await giftNotificationService.addGiftNotification(
        giftNotification: giftNotification);
    return result;
  }
}
