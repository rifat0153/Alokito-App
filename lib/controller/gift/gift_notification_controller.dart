import 'package:alokito_new/controller/auth/auth_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/services/notification/gift_notification_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class GiftNotificationController extends GetxController {
  GiftNotificationService giftNotificationService = GiftNotificationService();
  RxList<GiftNotification> giftNotifications = RxList.empty();

  @override
  void onInit() {
    // giftNotifications.bindStream(stream);
    super.onInit();
  }

  Future<bool> addNotificationForGiftRequest(
      {required GiftGiver giftGiver}) async {
    GiftNotification giftNotification = GiftNotification(
      requesterName: giftGiver.userName,
      requesterUid: FirebaseAuth.instance.currentUser?.uid ?? '',
      giverName: giftGiver.userName,
      giverUid: giftGiver.uid,
      giftType: giftGiver.giftType,
      notificationType: GiftNotificationType.packageRequested,
    );

    var result = await giftNotificationService.addGiftNotification(
        giftNotification: giftNotification);
    return result;
  }
}
