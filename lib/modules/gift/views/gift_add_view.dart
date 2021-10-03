import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/my_enums.dart';
import '../../../shared/config.dart';
import '../controllers/gift_add_form_controller.dart';
import '../controllers/gift_controller.dart';
import '../widgets/custom_gift_widget.dart';
import '../widgets/family_option_widget.dart';
import '../widgets/gift_detail_widget.dart';
import '../widgets/gift_location_widget.dart';
import '../widgets/image_input_widget.dart';
import '../widgets/listing_date_widget.dart';
import '../widgets/location_search_widget.dart';
import '../widgets/pickup_time_wdiget.dart';

class GiftAddView extends StatelessWidget {
  static const route = 'giftaddview';
  final GiftAddFormController controller = Get.find();
  final GiftController giftController = Get.find();

  // String giftType = Get.arguments.toString();

  @override
  Widget build(BuildContext context) {
    String giftType;

    switch (controller.giftType.value) {
      case GiftType.anyRetailItem:
        giftType = 'Any retail item';
        break;
      case GiftType.packageFor3Days:
        giftType = 'Package for 3 days';
        break;
      case GiftType.packageFor7Days:
        giftType = 'Package for 7 days';
        break;
      case GiftType.customizedPackage:
        giftType = 'Customized Package';
        break;
    }

    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.cancel,
                color: Colors.black,
              ),
              onPressed: Get.back,
            )
          ],
          title: Text(
            'My Gift - $giftType',
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.grey[200],
          shadowColor: Colors.white,
        ),
        body: Stack(
          children: [
            Container(
              height: Get.size.height,
              width: Get.size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/gift_add_form.png'), fit: BoxFit.fill),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  if (controller.giftType.value == GiftType.anyRetailItem) FamilyOptionWidget(),
                  if (controller.giftType.value == GiftType.customizedPackage) CustomGiftOptionWidget(),
                  ImageInputWidget(),
                  GiftDetailWidget(),
                  ListingDateWidget(),
                  PickUpTimeWidget(),
                  CurrentAddressFromCordinate(),
                  GiftLocationWidget(),
                  Obx(
                    () => controller.loading.value
                        ? const CircularProgressIndicator()
                        : MaterialButton(
                            onPressed: controller.addGift,
                            color: giftAddFormSubmitColor,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 100),
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
