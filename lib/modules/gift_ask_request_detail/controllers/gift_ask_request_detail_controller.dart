import 'package:alokito_new/models/gift_ask_request.dart/gift_ask_request.dart';
import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_ask_request_detail/services/gift_ask_request_detail_service.dart';
import 'package:alokito_new/modules/gift_request_detail/services/gift_request_detail_service.dart';
import 'package:alokito_new/modules/notification/controllers/notification_controller.dart';
import 'package:get/get.dart';

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

    await giftAskRequestDetailService.updateStatus(status: status, giftAskRequestId: giftAskRequest.id ?? '');

    await Get.find<NotificationController>().updateLocalNotificationForRequests(
      giftAskRequest: giftAskRequest,
      giftAskRequestStatus: giftRequestStatus,
    );

    Get.back();

    loading.value = false;
  }

  // Future<void> getGiftRequestsByRequestId() async {
  //   await giftAskRequestDetailService.getGiftAskRequests('614877b93fce5f966938d010');
  // }
}
