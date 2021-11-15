import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_request_detail/services/gift_request_detail_service.dart';
import 'package:alokito_new/modules/notification/controllers/notification_controller.dart';
import 'package:get/get.dart';

class GiftRequestDetailController extends GetxController {
  GiftRequestDetailController(this.giftRequestDetailService);

  GiftRequestDetailService giftRequestDetailService;

  final loading = false.obs;
  LocalUser? currentUserInfo;

  final message = ''.obs;
  final rating = 0.obs;

  @override
  Future onInit() async {
    super.onInit();

    getLocalUserInfo();
    await getGiftRequestsByRequestId();
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

    await giftRequestDetailService.getGiftRequests(userId);
  }

  Future<void> updateGiftRequestStatus(
    GiftRequest giftRequest,
    String status,
    GiftRequestStatus giftRequestStatus,
  ) async {
    loading.value = true;

    await giftRequestDetailService.updateStatus(status: status, giftRequestId: giftRequest.id ?? '');

    await Get.find<NotificationController>().updateLocalNotificationForRequests(
      giftRequest: giftRequest.copyWith(giftRequestStatus: giftRequestStatus),
      // status: giftRequestStatus,
    );

    Get.back();

    loading.value = false;
  }

  // Update giverText and requesterText field
  Future<void> updateUserRatingAndAddMessage(
    GiftRequest giftRequest,
  ) async {
    loading.value = true;

    // Set isUpdatingRequester to false if it is Giver
    final bool isUpdatingRequester = isCurrentUserRequester(giftRequest);

    print({'isUpdatingReqeuster': isUpdatingRequester});

    final isSuccessful = await giftRequestDetailService.updateRatingAndSendMessage(
        id: giftRequest.id ?? '',
        isUpdatingRequester: isUpdatingRequester,
        messageForRequester: message.value,
        messageForGiver: message.value,
        ratingForRequester: rating.value,
        ratingForGiver: rating.value,
        requesterId: giftRequest.requester.id ?? '',
        giverId: giftRequest.gift.user!.id ?? '');

    if (isSuccessful) {
      // Update Local Notificaiton DOc
      isUpdatingRequester
          ? await Get.find<NotificationController>().updateLocalNotificationForRequests(
              giftRequest: giftRequest.copyWith(messageForRequester: message.value, messageForRequesterSent: true))
          : await Get.find<NotificationController>().updateLocalNotificationForRequests(
              giftRequest: giftRequest.copyWith(messageForGiver: message.value, messageForGiverSent: true));
    }

    Get.back();
    Get.back();

    loading.value = false;
  }

  bool isCurrentUserRequester(GiftRequest giftRequest) {
    final currentUserId = Get.find<AuthController>().getCurrentUserId();

    print({'currentUserId': currentUserId, 'giverId': giftRequest.gift.user!.id});

    if (currentUserId == giftRequest.gift.user!.id) {
      return true;
    }

    return false;
  }

  Future<void> getGiftRequestsByRequestId() async {
    await giftRequestDetailService.getGiftRequestById('614877b93fce5f966938d010');
  }
}
