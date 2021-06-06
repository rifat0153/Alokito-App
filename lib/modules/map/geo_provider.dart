import 'package:alokito_new/models/geo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:geoflutterfire/geoflutterfire.dart';

class GeoProvider {
  var geo = Geoflutterfire();
  var _firestore = FirebaseFirestore.instance;

  Stream<int> numberStream(int nmb) {
    return Stream.periodic(Duration(seconds: 1), (value) => value + nmb);
  }

  Stream<List<Geo>> locationStream(double rad) {
// Create a geoFirePoint
    GeoFirePoint center = geo.point(latitude: 23.7590, longitude: 90.4119);

    var collectionReference = _firestore.collection('locations');
    var stream = geo
        .collection(collectionRef: collectionReference)
        .within(
          center: center,
          radius: rad,
          field: 'position',
          strictMode: true,
        )
        .map((event) => event.map(
              (e) {
                print('Geo provider service');
                
                return Geo.fromMap(e.data() ?? {});
              },
            ).toList());

    return stream;
  }
}
