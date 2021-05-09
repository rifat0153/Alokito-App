import 'package:cloud_firestore/cloud_firestore.dart';

class Position {
  String? geoHash;
  GeoPoint? geoPoint;

  Position();

  Position.fromMap(Map<String, dynamic> data) {
    geoHash = data['geohash'] as String?;
    geoPoint = data['geopoint'] as GeoPoint?;
  }

  Map<String, dynamic> toMap() {
    return {
      'geohash': geoHash,
      'geopoint': geoPoint,
    };
  }
}

class Geo {
  String? id;
  String? name;
  Position position = Position();
  double? distance;

  Geo();

  Geo.fromMap(Map<String, dynamic> data) {
    id = data['id'] as String?;
    name = data['name'] as String?;
    position = Position.fromMap(data['position'] as Map<String, dynamic>);
    distance = data['distance'] as double;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'distance': distance,
      'position': position.toMap(),
    };
  }
}
