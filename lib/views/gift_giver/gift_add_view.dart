import 'package:alokito_new/controller/gift/gift_add_form_controller.dart';
import 'package:alokito_new/widgets/gift_giver/distance_row_widget.dart';
import 'package:alokito_new/widgets/gift_giver/image_input_widget.dart';
import 'package:alokito_new/widgets/gift_giver/listing_date_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GiftAddView extends StatelessWidget {
  static const route = 'giftaddview';

  String giftType = Get.arguments.toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              icon: const Icon(
                Icons.cancel,
                color: Colors.black,
              ),
              onPressed: () {
                Get.back();
              })
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GiftDetailWidget extends StatelessWidget {
  _GiftDetailWidget({
    Key? key,
  }) : super(key: key);

  GiftAddFormController controller = Get.find();

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
