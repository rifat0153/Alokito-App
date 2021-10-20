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

    await Get.find<NotificationController>().updateLocalNotification(
      giftRequest: giftRequest,
      status: giftRequestStatus,
    );

    Get.back();

    loading.value = false;
  }

  Future<void> getGiftRequestsByRequestId() async {
    await giftRequestDetailService.getGiftRequestById('614877b93fce5f966938d010');
  }
}
