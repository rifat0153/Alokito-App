import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/services/gift_giver/gift_giver_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyGiftView extends StatelessWidget {
  static const route = 'mygiftview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('gifts')
              .doc('qifMHYBUwpXpgPLQf0BS')
              .snapshots(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: Text("Loading..."));
            }

            var docSnap = snapshot.data as DocumentSnapshot;
            var doc =
                GiftGiver.fromJson(docSnap.data() as Map<String, dynamic>);

            return Center(
                child: Text(doc.position.geopoint.latitude.toString()));
          }),
    );
  }
}
