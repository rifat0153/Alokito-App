import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_request_detail/services/gift_request_detail_service.dart';
import 'package:get/get.dart';

class GiftRequestDetailController extends GetxController {
  GiftRequestDetailController(this.giftRequestDetailService);

  GiftRequestDetailService giftRequestDetailService;

  @override
  Future onInit() async {
    super.onInit();

    await getGiftRequestsByRequestId();
  }

  Future<void> getGiftRequestsByUserId() async {
    final userId = Get.find<AuthController>()
        .currentUserInfo
        .value
        .maybeWhen(data: (user) => user.id ?? '', orElse: () => '');

    await giftRequestDetailService.getGiftRequests(userId);
  }

  Future<void> getGiftRequestsByRequestId() async {
    await giftRequestDetailService.getGiftRequestById('614877b93fce5f966938d010');
  }
}
