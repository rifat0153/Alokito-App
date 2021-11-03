import 'package:get/get.dart';

import '../../../models/gift_ask_request.dart/gift_ask_request.dart';
import '../../../models/user/local_user.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../notification/controllers/notification_controller.dart';
import '../services/gift_ask_request_detail_service.dart';

class GiftAskRequestDetailController extends GetxController {
  GiftAskRequestDetailController(this.giftAskRequestDetailService);

  GiftAskRequestDetailService giftAskRequestDetailService;

  final loading = false.obs;
  LocalUser? currentUserInfo;

  @override
  Future onInit() async {
    super.onInit();

    getLocalUserInfo();
    // await getGiftRequestsByRequestId();
  }

  void getLocalUserInfo() {
    currentUserInfo =
        Get.find<AuthController>().currentUserInfo.value.maybeWhen(data: (user) => user, orElse: () => null);
  }

  Future<void> getGiftRequestsByUserId() async {
    final userId = Get.find<AuthController>()
        .currentUserInfo
        .value
        .maybeWhen(data: (user) => user.id ?? '', orElse: () => '');

    await giftAskRequestDetailService.getGiftAskRequests(userId);
  }

  Future<void> updateGiftAskRequestStatus(
    GiftAskRequest giftAskRequest,
    String status,
    GiftAskRequestStatus giftRequestStatus,
  ) async {
    loading.value = true;

    final isStatusUpdated =
        await giftAskRequestDetailService.updateStatus(status: status, giftAskRequestId: giftAskRequest.id ?? '');

    if (isStatusUpdated) {
      await Get.find<NotificationController>().updateLocalNotificationForRequests(
        giftAskRequest: giftAskRequest,
        giftAskRequestStatus: giftRequestStatus,
      );
    }

    Get.back();

    loading.value = false;
  }

  // Future<void> getGiftRequestsByRequestId() async {
  //   await giftAskRequestDetailService.getGiftAskRequests('614877b93fce5f966938d010');
  // }
}
