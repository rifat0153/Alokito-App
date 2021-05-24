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
            controller.selectedAddress.value.isNotEmpty &&
                    !controller.addressSelected.value
                ? Card(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Selected Location: ',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('${controller.selectedAddress.value}'),
                          ],
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Colors.red,
                          onPressed: () {
                            controller.addressSelected.value = true;
                            controller.selectedAddress.value = '';
                            controller.addressQuery.value = '';
                          },
                          child: Text('unselect'),
                        )
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 16),
                    child: TextField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, style: BorderStyle.none),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          fillColor: GIFT_ADD_FORM_COLOR,
                          // hoverColor: Colors.grey,
                          filled: true,
                          hintText: 'e.g. near modhubag field'),
                      onChanged: (value) =>
                          controller.addressQuery.value = value,
                    ),
                  ),
            controller.foundAddress.value.isNotEmpty &&
                    controller.addressQuery.value.isNotEmpty &&
                    controller.addressSelected.value
                ? Text('Found Address')
                : Container(),
            controller.foundAddress.value.isNotEmpty &&
                    controller.addressQuery.value.isNotEmpty &&
                    controller.addressSelected.value
                ? Card(
                    color: GIFT_ADD_FORM_COLOR,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(controller.foundAddress.value),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Colors.blue,
                          onPressed: () {
                            controller.setSelectedAddress();
                            controller.addressSelected.value = false;
                            print('IN select: ' +
                                controller.selectedAddress.value);
                          },
                          child: const Text('Select'),
                        )
                      ],
                    ),
                  )
                : Container(),
          ],
        );
      },
    );
  }
}
