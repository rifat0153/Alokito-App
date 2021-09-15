import 'package:alokito_new/modules/gift/controllers/gift_add_form_controller.dart';
import 'package:alokito_new/modules/gift/controllers/gift_controller.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/modules/gift/widgets/custom_gift_widget.dart';
import 'package:alokito_new/modules/gift/widgets/distance_row_widget.dart';
import 'package:alokito_new/modules/gift/widgets/family_option_widget.dart';
import 'package:alokito_new/modules/gift/widgets/gift_location_widget.dart';
import 'package:alokito_new/modules/gift/widgets/image_input_widget.dart';
import 'package:alokito_new/modules/gift/widgets/listing_date_widget.dart';
import 'package:alokito_new/modules/gift/widgets/location_search_widget.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
            style: TextStyle(
              color: Colors.black,
              fontFamily: GoogleFonts.aclonica().fontFamily,
            ),
          ),
          backgroundColor: Colors.grey[200],
          shadowColor: Colors.white,
        ),
        // persistentFooterButtons: [
        //   const Icon(Icons.ac_unit_outlined),
        // ],
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

                  DistanceListRow(),
                  ImageInputWidget(),
                  _GiftDetailWidget(),
                  ListingDateWidget(),
                  _PickUpTimeWidget(),
                  CurrentAddressFromCordinate(),
                  GiftLocationWidget(),
                  Obx(
                    () => controller.isUploading.value
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
                  // const SizedBox(height: 500)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PickUpTimeWidget extends StatelessWidget {
  final GiftAddFormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('Pick up time'),
            Obx(
              () => Text(controller.showPickupTime()),
            ),
            MaterialButton(
              color: giftGiverButtonColor,
              onPressed: () async {
                var time = await showTimePicker(
                  initialTime: TimeOfDay.now(),
                  context: context,
                );
                var now = DateTime.now();
                if (time != null) {
                  now = DateTime(now.year, now.month, now.day, time.hour, time.minute);
                }

                controller.pickUpTime.value = Timestamp.fromDate(now);
              },
              child: const Text('Pick Time'),
            ),
          ],
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

class _GiftDetailWidget extends StatelessWidget {
  _GiftDetailWidget({
    Key? key,
  }) : super(key: key);

  final GiftAddFormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(width: 30),
            const Text('Gift Details'),
          ],
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                fillColor: giftAddFormColor,
                // hoverColor: Colors.grey,
                filled: true,
                hintText: 'e.g. Food or Medicine name, quality, quantity, any other information'),
            maxLines: 3,
            onChanged: (value) => controller.giftDetails.value = value,
          ),
        ),
      ],
    );
  }
}
