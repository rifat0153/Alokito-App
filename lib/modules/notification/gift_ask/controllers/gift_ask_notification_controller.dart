import 'package:alokito_new/models/gift_ask/gift_ask_giver.dart';
import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/notification/notification.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_ask_giver/controller/gift_ask_giver_controller.dart';
import 'package:alokito_new/modules/gift_receiver/controllers/gift_receiver_controller.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class GiftAskNotificationController extends GetxController {
  GiftAskNotificationController();

  RxString messageForRequester = ''.obs;
  RxString messageForGiver = ''.obs;
  RxInt requesterRating = 0.obs;
  RxInt giverRating = 0.obs;

  //* Message for Giver and Rating
  Future<void> messageForGiverAndRating(GiftAskGiver giftAskGiver) async {
    print('IN adding giver message');


    //* changeGiftASkGiver to completed and delete the GiftASk request
    final updatedGiftAskGiver = giftAskGiver.copyWith(messageForGiverrSent: true);
    await Get.find<GiftAskGiverController>().changeGiftAskGiverAndDeleteGiftAsk(updatedGiftAskGiver);

    // *update requester userinfo to no request
    final updatedUser = giftAskGiver.requester.copyWith(hasGiftAskRequest: false);
    // await Get.find<AuthController>().authService.updateLocalUser(updatedUser);


    //***  THIS CALL Used to change user it has been fixed for now ***
    // await Get.find<AuthController>().authService.updateUserRating(giftAskGiver.giver.id!, giverRating.value);
  }

  //*Message for Requester and Rating
  Future<void> messageForRequesterAndRating(GiftAskGiver giftAskGiver) async {


    //* changeGiftASkGiver to completed and delete the GiftASk request
    final updatedGiftAskGiver = giftAskGiver.copyWith(messageForRequesterSent: true);
    await Get.find<GiftAskGiverController>().changeGiftAskGiverAndDeleteGiftAsk(updatedGiftAskGiver);

    // *update giver userinfo to no request
    final updatedUser = giftAskGiver.giver.copyWith(hasGiftAskRequest: false);
    // await Get.find<AuthController>().authService.updateLocalUser(updatedUser);

    //***  THIS CALL Used to change user it has been fixed for now ***
    // await Get.find<AuthController>().authService.updateUserRating(giftAskGiver.requester.id ?? '', requesterRating.value);
  }

  //* MARKED AS DONE BY GIVER
  Future<void> doneGiftRequestByGiver(GiftAskGiver giftAskGiver) async {
    await Get.find<GiftAskGiverController>().changeGiftAskGiverStatus(giftAskGiver, GiftAskStatus.requestDelivered);

  }

  //* AFTER CONFIRMATION BY GIVER, Gift ACCEPTED BY REUQESTER, makes no sense IK, BUT its how app was made :3
  Future<void> aceeptGiftRequestByRequester(GiftAskGiver giftAskGiver) async {
    await Get.find<GiftAskGiverController>().changeGiftAskGiverStatus(giftAskGiver, GiftAskStatus.requestAccepted);


  }

  //* CANCELED BY REQUESTER
  Future<void> cancelGiftRequestByRequester(GiftAskGiver giftAskGiver) async {
    await Get.find<GiftAskGiverController>()
        .changeGiftAskGiverStatus(giftAskGiver, GiftAskStatus.requestCanceledByRequester);



  }

  //* CONFIRMED BY GIVER
  Future<void> confirmGift(GiftAskGiver giftAskGiver) async {
    await Get.find<GiftAskGiverController>().changeGiftAskGiverStatus(giftAskGiver, GiftAskStatus.requestConfirmed);


   
  }

  Future<void> addNotificationRequesterAndGiver(
    GiftAskGiver giftAskGiver,
    String requesterText,
    String giverText,
  ) async {
  }
}
