import 'package:cloud_firestore/cloud_firestore.dart';

Timestamp? timestampFromJson(Timestamp? timestamp) {
  return timestamp != null ? timestamp : null;
}

String? timestampToJson(Timestamp? timestamp) {
  return timestamp != null ? timestamp.toString() : null;
}
