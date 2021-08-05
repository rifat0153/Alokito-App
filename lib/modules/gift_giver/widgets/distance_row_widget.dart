import 'package:alokito_new/modules/gift_giver/controllers/gift_add_form_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DistanceListRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(width: 16),
              const Text(
                'Distance',
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _ButtonWidget(distance: 1),
              _ButtonWidget(distance: 2),
              _ButtonWidget(distance: 5),
              _ButtonWidget(distance: 10),
              _ButtonWidget(distance: 15),
            ],
          )
        ],
      ),
    );
  }
}

class _ButtonWidget extends StatelessWidget {
  _ButtonWidget({Key? key, required this.distance}) : super(key: key);

  GiftAddFormController controller = Get.find();
  final int distance;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.distance.value = distance;
      },
      child: Obx(
        () => Container(
          height: 25,
          width: 60,
          decoration: BoxDecoration(
            color: controller.distance.value == distance
                ? Colors.cyan
                : giftAddFormColor,
            borderRadius: BorderRadius.circular(5),
          ),
          alignment: Alignment.center,
          child: Text('${distance}km'),
        ),
      ),
    );
  }
}
