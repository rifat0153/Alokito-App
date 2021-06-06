import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserDetailWidget extends StatelessWidget {
  UserDetailWidget(
      {required this.imageUrl,
      required this.userJoinedAt,
      required this.userName});

  final String imageUrl;
  final Timestamp userJoinedAt;
  final String userName;

  @override
  Widget build(BuildContext context) {
    var date = DateTime.now();
    var userCreatedAt = DateTime.fromMillisecondsSinceEpoch(
        userJoinedAt.millisecondsSinceEpoch);
    var joined = date.difference(userCreatedAt).inDays ~/ 30;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(imageUrl),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('Joined $joined months ago'),
            ],
          ),
        ],
      ),
    );
  }
}
