import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NotifMapWidget extends StatelessWidget {
  NotifMapWidget({Key? key, required this.giftNotification}) : super(key: key);

  GiftNotification giftNotification;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GoogleMap(
        markers: Set<Marker>.of([
          Marker(
            markerId: MarkerId(giftNotification.id ?? ''),
            position: LatLng(
              giftNotification.giftPosition.geopoint.latitude,
              giftNotification.giftPosition.geopoint.latitude,
            ),
          ),
        ]),
        initialCameraPosition: CameraPosition(
          target: LatLng(
            giftNotification.giftPosition.geopoint.latitude,
            giftNotification.giftPosition.geopoint.latitude,
          ),
          zoom: 11,
        ),
      ),
    );
  }
}
