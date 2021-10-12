import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_request_detail/services/gift_request_detail_service.dart';
import 'package:get/get.dart';

class GiftRequestDetailController extends GetxController {
  GiftRequestDetailController(this.giftRequestDetailService);

  GiftRequestDetailService giftRequestDetailService;

  @override
  Future onInit() async {
    super.onInit();

    await getGiftRequestsById();
  }

  Future<void> getGiftRequestsById() async {
    final userId = Get.find<AuthController>()
        .currentUserInfo
        .value
        .maybeWhen(data: (user) => user.id ?? '', orElse: () => '');

    await giftRequestDetailService.getGiftRequests(userId);
  }
}
