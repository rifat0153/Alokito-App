import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:alokito_new/modules/gift_request_detail/controllers/gift_request_detail_controller.dart';

class GiftRequestDetailView extends StatelessWidget {
  GiftRequestDetailView({
    Key? key,
    this.giftRequest,
  }) : super(key: key);

  GiftRequest? giftRequest;
  static const route = 'gift_request_detail_view';

  final GiftRequestDetailController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('GiftRequest Detail View'),
      ),
    );
  }
}
