import 'package:alokito_new/modules/gift/controllers/gift_add_form_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomGiftOptionWidget extends StatelessWidget {
  final GiftAddFormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          const SizedBox(width: 30),
          Container(
            height: 9,
            width: 9,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            height: 25,
            width: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: giftAddFormColor,
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
              maxLength: 2,
              // maxLengthEnforcement: MaxLengthEnforcement.enforced,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                counterText: '',
                counterStyle: TextStyle(),
                semanticCounterText: 'null',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
              onChanged: (value) {
                if (value.isNumericOnly) {
                  controller.givingGiftInDays.value = int.parse(value);
                }

                print(controller.givingGiftInDays.value);
              },
            ),
          ),
          const SizedBox(width: 8),
          const Text('Days'),
        ],
      ),
    );
  }
}
