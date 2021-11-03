import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../models/gift_ask_request.dart/gift_ask_request.dart';

class GiftAskRequestDetailMapWidget extends StatelessWidget {
  const GiftAskRequestDetailMapWidget({
    Key? key,
    required this.giftAskRequest,
  }) : super(key: key);

  final GiftAskRequest giftAskRequest;

  @override
  Widget build(BuildContext context) {
    final List<Factory<OneSequenceGestureRecognizer>> gestureRecognizerForMap = [
      Factory<PanGestureRecognizer>(() => PanGestureRecognizer()),
      Factory<ScaleGestureRecognizer>(() => ScaleGestureRecognizer()),
      Factory<TapGestureRecognizer>(() => TapGestureRecognizer()),
      Factory<VerticalDragGestureRecognizer>(() => VerticalDragGestureRecognizer()),
    ];

    final Marker giftMarker = Marker(
      markerId: MarkerId(giftAskRequest.id.toString()),
      position: LatLng(giftAskRequest.giftAsk.geometry.coordinates.last, giftAskRequest.giftAsk.geometry.coordinates.first),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 300,
        width: double.infinity,
        child: GoogleMap(
          gestureRecognizers: gestureRecognizerForMap.toSet(),
          initialCameraPosition: CameraPosition(
            target:
                LatLng(giftAskRequest.giftAsk.geometry.coordinates.last, giftAskRequest.giftAsk.geometry.coordinates.first),
            zoom: 13,
          ),
          zoomControlsEnabled: false,
          zoomGesturesEnabled: false,
          markers: {giftMarker},
        ),
      ),
    );
  }
}
