import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/config.dart';
import '../controllers/gift_ask_controller.dart';
import 'map_widget.dart';

class InsertLocationWidget extends StatelessWidget {
  final GiftAskController giftAskController = Get.find<GiftAskController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 30,
        width: context.width,
        decoration: BoxDecoration(
          color: giftAddFormColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: GestureDetector(
          onTap: () => Get.to(const MapWidget()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Obx(
                    () => Text(
                      giftAskController.address.value.isEmpty
                          ? 'insert your location'
                          : "${giftAskController.area.value}, ${giftAskController.address.value}",
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                    ),
                  ),
                ),
              ),
              Transform.rotate(
                angle: -0.7,
                child: const Icon(
                  Icons.send,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
