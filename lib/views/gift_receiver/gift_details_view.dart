import 'package:alokito_new/controller/gift/gift_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftDetailsView extends StatelessWidget {
  GiftDetailsView({required this.giftGiver});

  GiftGiver giftGiver;
  GiftController giftController = Get.find();

  @override
  Widget build(BuildContext context) {
    var giftType = giftController.getGiftType(giftGiver.giftType);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Text('Gift Offer- $giftType'),
          elevation: 5,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            Container(
              height: Get.size.height,
              width: Get.size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/gift_details.png'),
                    fit: BoxFit.fill),
              ),
            ),
            Positioned(top: 10, left: 10, child: _Image()),
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: const Icon(Icons.arrow_back), onPressed: () => Get.back()),
      ],
    );
  }
}
