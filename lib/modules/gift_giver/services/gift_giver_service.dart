import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_giver/controllers/gift_add_form_controller.dart';
import 'package:alokito_new/modules/gift_giver/gift_giver_exception.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/my_bottomsheets.dart';
import 'package:alokito_new/shared/shared_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

abstract class BaseGiftGiverService {
  Future<void> addGift();
}

class GiftGiverService implements BaseGiftGiverService {
  @override
  Future<void> addGift() async {
    final client = http.Client();

    final controller = Get.find<GiftAddFormController>();

    final Geometry geometry =
        Geometry(coordinates: [controller.selectedLatLng.value.longitude, controller.selectedLatLng.value.latitude]);

    String giftImageUrl = '';

    try {
      final uid = FirebaseAuth.instance.currentUser?.uid;
      giftImageUrl = await SharedService.uploadImageAndReturnDownloadURL(controller.imageFile.value, 'users/$uid');
    } catch (e) {
      throw GiftGiverException(message: 'Gift image Upload Fail');
    }

    final gift = GiftGiver(
        listingForDays: controller.givingGiftInDays.value,
        canLeaveOutside: controller.canLeaveOutside.value,
        geometry: geometry,
        giftType: convertGiftType(controller.giftType.value),
        giftDetails: controller.giftDetails.value,
        pickUpTime: DateTime.fromMicrosecondsSinceEpoch(controller.pickUpTime.value!.microsecondsSinceEpoch),
        area: controller.area.value,
        location: controller.location.value,
        imageUrl: giftImageUrl,
        distance: 15);

    // * Add gift to MongoDB
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
      final GiftGiver giftFromDB = giftGiverFromJson(response.body);
      print(giftFromDB);
    } else {
      await MyError.showErrorBottomSheet('${response.statusCode}: Something went wrong');
      return;
    }
  }
}
