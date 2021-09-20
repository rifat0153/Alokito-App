import 'package:flutter/material.dart';

import '../../../models/gift_giver/gift.dart';
import '../../../shared/config.dart';

class PackageName extends StatelessWidget {
  const PackageName({
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
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Package For',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 8, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              color: giftAddFormColor,
            ),
            child: Row(
              children: [
                Text('test'),
                const SizedBox(width: 30),
                Text('12 days'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
