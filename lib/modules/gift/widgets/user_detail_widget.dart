import 'package:flutter/material.dart';

import '../../../models/gift_giver/gift.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({
    Key? key,
    this.horizontalPadding = 16,
    this.verticalPadding = 8,
    required this.giftGiver,
  }) : super(key: key);

  final double horizontalPadding;
  final double verticalPadding;
  final Gift giftGiver;

  @override
  Widget build(BuildContext context) {
    final date = DateTime.now();
    final userCreatedAt = DateTime.fromMicrosecondsSinceEpoch(giftGiver.user!.createdAt.microsecondsSinceEpoch);
    final joined = date.difference(userCreatedAt).inDays ~/ 30;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(giftGiver.user!.imageUrl),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                giftGiver.user!.firstName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text('Joined $joined months ago'),
            ],
          ),
        ],
      ),
    );
  }
}
