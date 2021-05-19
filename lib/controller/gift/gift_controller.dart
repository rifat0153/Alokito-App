import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/services/gift_giver/gift_giver_service.dart';
import 'package:get/get.dart';

class GiftController extends GetxController {
  GiftGiverService clubService = GiftGiverService();
  Rx<List<GiftGiver>> giftList = Rx<List<GiftGiver>>([]);
  var searchRadius = 100.0.obs;

  @override
  void onInit() {
    giftList.bindStream(clubService.giftStreamByLocation());
    super.onInit();
  }

  void bindGiftStream() {
    giftList.bindStream(clubService.giftStreamByLocation());
  }
}
