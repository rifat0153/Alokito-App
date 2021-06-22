import 'package:alokito_new/modules/gift_ask/widgets/gift_ask_map_widget.dart';
import 'package:alokito_new/modules/map/my_map_view.dart';
import 'package:flutter/material.dart';

class GiftAskRequestView extends StatelessWidget {
  const GiftAskRequestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        foregroundColor: Colors.grey,
        backgroundColor: Colors.grey[400],
      ),
      body: GiftAskMapWidget(),
      // body: MyMapView(),
    );
  }
}
