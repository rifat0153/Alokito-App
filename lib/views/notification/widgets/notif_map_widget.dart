import 'dart:async';

import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NotifMapWidget extends StatefulWidget {
  NotifMapWidget({required this.giftNotification});

  GiftNotification giftNotification;

  @override
  State<NotifMapWidget> createState() => NotifMapWidgetState();
}

class NotifMapWidgetState extends State<NotifMapWidget> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(
            bearing: 192.8334901395799,
            target: LatLng(
                widget.giftNotification.giftPosition.geopoint.latitude,
                widget.giftNotification.giftPosition.geopoint.longitude),
            tilt: 59.440717697143555,
            zoom: 19.151926040649414),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
