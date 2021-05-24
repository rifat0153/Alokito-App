import 'package:alokito_new/controller/gift/gift_add_form_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurrentAddressFromCordinate extends StatelessWidget {
  CurrentAddressFromCordinate();

  final GiftAddFormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    controller.setLatLngFromAddress();

    return Obx(
      () {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(width: 0, style: BorderStyle.none),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    fillColor: GIFT_ADD_FORM_COLOR,
                    // hoverColor: Colors.grey,
                    filled: true,
                    hintText: 'e.g. near modhubag field'),
              ),
            ),
            controller.foundAddress.value.isNotEmpty
                ? Text('data')
                : Container(),
          ],
        );
      },
    );
  }
}
