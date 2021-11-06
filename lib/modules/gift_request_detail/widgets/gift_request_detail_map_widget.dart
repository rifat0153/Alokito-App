import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftRequestDetailMapWidget extends StatelessWidget {
  const GiftRequestDetailMapWidget({
    Key? key,
    required this.giftRequest,
  }) : super(key: key);

  final GiftRequest giftRequest;

  @override
  Widget build(BuildContext context) {
    final List<Factory<OneSequenceGestureRecognizer>> gestureRecognizerForMap = [
      Factory<PanGestureRecognizer>(() => PanGestureRecognizer()),
      Factory<ScaleGestureRecognizer>(() => ScaleGestureRecognizer()),
      Factory<TapGestureRecognizer>(() => TapGestureRecognizer()),
      Factory<VerticalDragGestureRecognizer>(() => VerticalDragGestureRecognizer()),
    ];

    final Marker giftMarker = Marker(
      markerId: MarkerId(giftRequest.id.toString()),
      position: LatLng(giftRequest.gift.geometry.coordinates.last, giftRequest.gift.geometry.coordinates.first),
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
                LatLng(giftRequest.gift.geometry.coordinates.last, giftRequest.gift.geometry.coordinates.first),
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
