import 'package:flutter/material.dart';

import '../../../models/gift_giver/gift.dart';
import '../../../shared/config.dart';

class GiftDetails extends StatelessWidget {
  const GiftDetails({required this.giftGiver, this.horizontalPadding = 16, this.verticalPadding = 8});
  
  final double horizontalPadding;
  final double verticalPadding;
  final Gift giftGiver;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Gift Details',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 8, color: Colors.transparent),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    color: giftAddFormColor,
                  ),
                  child: Text(giftGiver.giftDetails),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
