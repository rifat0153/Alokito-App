import 'dart:async';

import 'package:alokito_new/controller/gift/gift_notification_controller.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NotifMapWidget extends StatefulWidget {
  NotifMapWidget({required this.giftNotification});

  GiftNotification giftNotification;

  @override
  State<NotifMapWidget> createState() => NotifMapWidgetState();
}

class NotifMapWidgetState extends State<NotifMapWidget> {
  Completer<GoogleMapController> _controller = Completer();
  final GiftNotificationController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: Text('Pickup Location', style: boldFontStyle),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Text(widget.giftNotification.giftLocation),
            ),
            Expanded(
              child: GoogleMap(
                // mapType: MapType.hybrid,
                initialCameraPosition: CameraPosition(
                    bearing: 192.8334901395799,
                    target: LatLng(
                        widget.giftNotification.giftPosition.geopoint.latitude,
                        widget
                            .giftNotification.giftPosition.geopoint.longitude),
                    // tilt: 59.440717697143555,
                    zoom: 14.151926040649414),
                markers: Set<Marker>.of([
                  Marker(
                    markerId: MarkerId('1'),
                    position: LatLng(
                        widget.giftNotification.giftPosition.geopoint.latitude,
                        widget
                            .giftNotification.giftPosition.geopoint.longitude),
                  )
                ]),
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
