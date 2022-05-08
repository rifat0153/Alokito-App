import 'package:alokito_new/core/location/geocoding_helper.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

extension LatLngExt on LatLng {
  Future<String> toReadableAddress() async {
    try {
      final List<Placemark> placemarks = await GeocodingHelper.getAddressFromPosition(latitude, longitude);

      final location = placemarks.first.locality ?? 'N/A';
      final area = placemarks.first.name ?? 'N/A';

      final address = '$area, $location, ${placemarks.first.country}';

      return address;
    } on Exception catch (_) {
      print('Could not convert latlng $this to readable address');
      return '';
    }
  }

  Geometry toGeometry() {
    return Geometry(type: 'Point', coordinates: [longitude, latitude]);
  }
}
