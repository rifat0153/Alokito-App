import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controller/gift/gift_add_form_controller.dart';
import '../../widgets/gift_giver/distance_row_widget.dart';
import '../../widgets/gift_giver/gift_location_widget.dart';
import '../../widgets/gift_giver/image_input_widget.dart';
import '../../widgets/gift_giver/listing_date_widget.dart';

class GiftAddView extends StatelessWidget {
  static const route = 'giftaddview';
  final GiftAddFormController controller = Get.find();

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

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              icon: const Icon(
                Icons.cancel,
                color: Colors.black,
              ),
              onPressed: () => Get.back())
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
      persistentFooterButtons: [
        const Icon(Icons.ac_unit_outlined),
      ],
      body: SafeArea(
        child: Container(
          height: Get.size.height,
          width: Get.size.width,
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage('assets/images/rsz_background.png'),
          //       fit: BoxFit.fill),
          // ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                DistanceListRow(),
                ImageInputWidget(),
                _GiftDetailWidget(),
                ListingDateWidget(),
                _PickUpTimeWidget(),
                GiftLocationWidget(),
                MaterialButton(
                  onPressed: () {},
                  color: GIFT_ADD_FORM_SUBMIT,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PickUpTimeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(width: 30),
            const Text('Pick up time'),
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
                fillColor: Colors.grey[300],
                hoverColor: Colors.grey,
                filled: true,
                hintText: 'e.g. today from 10.30 am to 4.30 pm'),
            maxLines: 1,
            onChanged: (value) {},
          ),
        ),
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
                fillColor: Colors.grey[300],
                hoverColor: Colors.grey,
                filled: true,
                hintText:
                    'e.g. Food or Medicine name, quality, quantity, any other information'),
            maxLines: 3,
            onChanged: (value) => controller.giftDetails.value = value,
          ),
        ),
      ],
    );
  }
}
