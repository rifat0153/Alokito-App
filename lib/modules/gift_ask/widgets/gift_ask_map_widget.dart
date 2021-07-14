import 'package:alokito_new/modules/gift_ask/gift_ask_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftAskMapWidget extends StatelessWidget {
  final GiftAskController giftAskController = Get.find<GiftAskController>();
  GoogleMapController? _mapController;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: SizedBox(
              width: mediaQuery.size.width,
              height: mediaQuery.size.height * (1 / 3),
              child: Obx(
                () => GoogleMap(
                  onMapCreated: _onMapCreated,
                  // zoomControlsEnabled: false,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(giftAskController.currentUserPosition.value.latitude,
                        giftAskController.currentUserPosition.value.longitude),
                    zoom: 9.0,
                  ),
                  markers: Set<Marker>.of(giftAskController.markers.values),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }
}
