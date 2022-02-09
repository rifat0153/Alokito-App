import 'package:alokito_new/models/gift_ask/gift_ask.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final List<Factory<OneSequenceGestureRecognizer>> kGestureRecognizerForMap = [
  Factory<PanGestureRecognizer>(() => PanGestureRecognizer()),
  Factory<ScaleGestureRecognizer>(() => ScaleGestureRecognizer()),
  Factory<TapGestureRecognizer>(() => TapGestureRecognizer()),
  Factory<VerticalDragGestureRecognizer>(() => VerticalDragGestureRecognizer()),
];

class GiftAskDetailMapWidget extends StatelessWidget {
  const GiftAskDetailMapWidget({
    Key? key,
    required this.giftAsk,
  }) : super(key: key);

  final GiftAsk giftAsk;

  @override
  Widget build(BuildContext context) {
  

    final Marker giftMarker = Marker(
      markerId: MarkerId(giftAsk.id.toString()),
      position: LatLng(giftAsk.geometry.coordinates.last, giftAsk.geometry.coordinates.first),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 300,
        width: double.infinity,
        child: GoogleMap(
          gestureRecognizers: kGestureRecognizerForMap.toSet(),
          initialCameraPosition: CameraPosition(
            target:
                LatLng(giftAsk.geometry.coordinates.last, giftAsk.geometry.coordinates.first),
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