import 'package:alokito_new/models/gift_giver/gift.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift/controllers/gift_add_form_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/my_bottomsheets.dart';
import 'package:alokito_new/shared/shared_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../gift_exception.dart';

abstract class BaseGiftGiverService {
  Future<void> addGift();
}

class GiftService implements BaseGiftGiverService {
  @override
  Future<void> addGift() async {
    final client = http.Client();

    final controller = Get.find<GiftAddFormController>();

    final Geometry geometry =
        Geometry(coordinates: [controller.selectedLatLng.value.longitude, controller.selectedLatLng.value.latitude]);

    String giftImageUrl = '';

    try {
      final uid = FirebaseAuth.instance.currentUser?.uid;
      giftImageUrl = await FirebaseService.uploadImageAndReturnDownloadURL(controller.imageFile.value, 'users/$uid');
    } catch (e) {
      throw GiftException(message: 'Gift image Upload Fail');
    }

    final LocalUser? currentUser =
        Get.find<AuthController>().currentUserInfo.value.maybeWhen(data: (user) => user, orElse: () => null);

    try {
      final gift = Gift(
        userId: currentUser!.id?? '',
        user: currentUser,
        listingForDays: controller.givingGiftInDays.value,
        canLeaveOutside: controller.canLeaveOutside.value,
        geometry: geometry,
        giftType: convertGiftType(controller.giftType.value).toLowerCase(),
        giftDetails: controller.giftDetails.value,
        pickUpTime: DateTime.fromMicrosecondsSinceEpoch(controller.pickUpTime.value!.microsecondsSinceEpoch),
        area: controller.area.value,
        location: controller.location.value,
        imageUrl: giftImageUrl,
        distance: 15,
      );

      // * Add Gift to DB
      final http.Response response = await client
          .post(
            Uri.parse('$baseUrl/gift/store'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: giftGiverToJson(gift),
          )
          .timeout(const Duration(seconds: timeout));

      if (response.statusCode == 200 || response.statusCode == 201) {
        await MySnackbar.showSuccessSnackbar('Gift Added');
      } else {
        await MyBottomSheet.showErrorBottomSheet('${response.statusCode}: Something went wrong');
        return;
      }
    } catch (e) {
      await MyBottomSheet.showErrorBottomSheet('$e: Something went wrong');
    }
  }
}
