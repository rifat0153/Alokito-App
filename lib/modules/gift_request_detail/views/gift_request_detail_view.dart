import 'package:alokito_new/modules/gift_request_detail/controllers/gift_request_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftRequestDetailView extends StatelessWidget {
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
