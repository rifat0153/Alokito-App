import 'package:cloud_firestore/cloud_firestore.dart';

Timestamp? timestampFromJson(String? json) {
  return json != null ? json as Timestamp : null;
}

String? timestampToJson(Timestamp? timestamp) {
  return timestamp != null ? timestamp.toString() : null;
}
