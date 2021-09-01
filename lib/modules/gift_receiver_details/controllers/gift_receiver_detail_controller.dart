import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/gift_giver/gift_receiver.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_giver/controllers/gift_controller.dart';
import 'package:alokito_new/modules/gift_receiver/controllers/gift_receiver_controller.dart';
import 'package:get/get.dart';

class GiftReceiverDetailController extends GetxController {
  GiftReceiverDetailController();

  RxBool loading = false.obs;

  RxString comment = ''.obs;

  Future<void> addGiftRequest(GiftGiver giftGiver) async {
    // final GiftReceiver giftReceiver =
    //     GiftReceiver(comment: comment, giftGiver: giftGiver, requester: requester, createdAt: createdAt);
  }
}
