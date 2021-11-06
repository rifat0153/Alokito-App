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

  final message = ''.obs;
  final rating = 0.obs;

  @override
  Future onInit() async {
    super.onInit();

    getLocalUserInfo();
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
          giftAskRequest: giftAskRequest.copyWith(giftAskRequestStatus: giftRequestStatus));
    }

    Get.back();

    loading.value = false;
  }

  // Update giverText and requesterText field
  Future<void> updateUserRatingAndAddMessage(
    GiftAskRequest giftAskRequest,
  ) async {
    loading.value = true;

    final bool isUpdatingRequester = isCurrentUserRequester(giftAskRequest);

    final isSuccessful = await giftAskRequestDetailService.updateRatingAndSendMessage(
        id: giftAskRequest.id ?? '',
        isUpdatingRequester: isUpdatingRequester,
        messageForRequester: message.value,
        messageForGiver: message.value,
        ratingForRequester: rating.value,
        ratingForGiver: rating.value,
        requesterId: giftAskRequest.giftAsk.user.id ?? '',
        giverId: giftAskRequest.giver.id ?? '');

    if (isSuccessful) {
      // Update Local Notificaiton DOc
      isUpdatingRequester
          ? await Get.find<NotificationController>().updateLocalNotificationForRequests(
              giftAskRequest: giftAskRequest.copyWith(messageForRequester: message.value))
          : await Get.find<NotificationController>().updateLocalNotificationForRequests(
              giftAskRequest: giftAskRequest.copyWith(messageForGiver: message.value));
    }

    Get.back();

    loading.value = false;
  }

  bool isCurrentUserRequester(GiftAskRequest giftAskRequest) {
    return Get.find<AuthController>()
            .currentUserInfo
            .value
            .maybeWhen(data: (data) => data.id!, orElse: () => '') ==
        giftAskRequest.giftAsk.user.id;
  }

  // Future<void> getGiftRequestsByRequestId() async {
  //   await giftAskRequestDetailService.getGiftAskRequests('614877b93fce5f966938d010');
  // }
}
