import 'package:alokito_new/models/gift_ask/gift_ask.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftAskDetailView extends StatelessWidget {
  const GiftAskDetailView({Key? key, required this.giftAsk}) : super(key: key);

  final GiftAsk giftAsk;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Get.back(), icon: Icon(Icons.arrow_back_ios)),
        title: Text('Gift Request -' + convertGiftAskType(giftAskType: giftAsk.giftAskType)),
      ),
    );
  }
}
