import 'package:geocoding/geocoding.dart';

class GeocodingHelper {
  static Future<List<Placemark>> getAddressFromPosition(double lat, double lng) async {
    final List<Placemark> placemarks = await placemarkFromCoordinates(lat, lng);

    return placemarks;
  }
}
