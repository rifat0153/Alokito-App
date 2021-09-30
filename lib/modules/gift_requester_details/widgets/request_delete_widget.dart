import 'dart:ui';

import 'package:alokito_new/models/gift/gift.dart';
import 'package:alokito_new/modules/gift_requester_details/controllers/gift_requester_detail_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestDeleteWidget extends StatelessWidget {
  RequestDeleteWidget({required this.giftGiver});

  final Gift giftGiver;

  final GiftRequesterDetailController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          // height: 300,
          // width: Get.size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Are you sure you want to delete the request?'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      onPressed: () async {
                        // await controller.canceledByRequester(giftRequest);
                        Get.back();
                      },
                      color: Colors.green,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      child: const Text(
                        'Yes',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    MaterialButton(
                      onPressed: Get.back,
                      color: Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      child: const Text(
                        'No',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
