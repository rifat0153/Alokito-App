import 'package:alokito_new/controller/map/geo_provider.dart';
import 'package:alokito_new/models/geo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'marker_notifier.dart';

final geoProvider = Provider.autoDispose((ref) => GeoProvider());

final numberProvider = StreamProvider.autoDispose.family<int, int>((ref, nmb) {
  final geo = ref.read(geoProvider);
  final rad = ref.read(radiusProvider).state;

  return geo.numberStream(rad.toInt());
});

final radiusProvider = StateProvider<double>((ref) => 5.0);
final markerProvider = StateProvider<Map<MarkerId, Marker>>((ref) => {});

final geoStreamProvider = StreamProvider.family<List<Geo>, double>((ref, rad) {
  final geo = ref.read(geoProvider);

  return geo.locationStream(rad);
});

final myNotifier = ChangeNotifierProvider((ref) => MyNumberNotifier());

final markerNotifier = ChangeNotifierProvider((ref) => MarkerNotifier());
