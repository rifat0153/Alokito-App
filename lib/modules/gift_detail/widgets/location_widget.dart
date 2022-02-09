import 'package:alokito_new/models/gift/gift.dart';
import 'package:flutter/material.dart';


class Location extends StatelessWidget {
  const Location({
    Key? key,
     this.horizontalPadding = 16,
     this.verticalPadding = 16,
    required this.giftGiver,
  }) : super(key: key);

 final double horizontalPadding;
  final double verticalPadding;
  final Gift giftGiver;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Location', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text('${giftGiver.location}'),
        ],
      ),
    );
  }
}
