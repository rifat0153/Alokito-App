import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/config.dart';
import '../controllers/gift_add_form_controller.dart';

class PickUpTimeWidget extends StatelessWidget {
   PickUpTimeWidget({Key? key}) : super(key: key);
  
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


