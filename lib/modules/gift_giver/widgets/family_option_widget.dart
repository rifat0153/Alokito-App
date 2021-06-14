import 'package:alokito_new/modules/gift_giver/gift_add_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FamilyOptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              const SizedBox(width: 30),
              const Text(
                'Package For',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 30),
            GestureDetector(
                onTap: () =>
                    Get.find<GiftAddFormController>().giftFor.value = 0,
                child: _Option('Small Family', 0)),
            const Spacer(),
            GestureDetector(
                onTap: () =>
                    Get.find<GiftAddFormController>().giftFor.value = 1,
                child: _Option('Large Family', 1)),
            const SizedBox(width: 30)
          ],
        ),
      ],
    );
  }
}

class _Option extends StatelessWidget {
  _Option(this.text, this.giftFor);
  String text;
  int giftFor;

  final GiftAddFormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => Container(
            height: 9,
            width: 9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: controller.giftFor.value == giftFor
                  ? Colors.lightBlue
                  : Colors.grey,
            ),
          ),
        ),
        SizedBox(width: 6),
        Text(text)
      ],
    );
  }
}
