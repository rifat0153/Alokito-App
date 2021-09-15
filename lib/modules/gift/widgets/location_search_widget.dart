import 'package:alokito_new/modules/gift/controllers/gift_add_form_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurrentAddressFromCordinate extends StatelessWidget {
  CurrentAddressFromCordinate();

  final GiftAddFormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    controller.getCurrentLocationAndSet();

    return Obx(
      () {
        return Column(
          children: [
            if (controller.selectedMapLocation.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Selected Location',
                        style: TextStyle(
                            // fontSize: 20,
                            // color: Colors.blue,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: giftAddFormColor,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                ' ${controller.selectedMapLocation.value},',
                                style: const TextStyle(color: Colors.black54),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
