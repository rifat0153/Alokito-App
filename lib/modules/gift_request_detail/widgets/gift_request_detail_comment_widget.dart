import 'package:alokito_new/models/gift_request/gift_request.dart';
import 'package:flutter/material.dart';

class GiftCommentWidget extends StatelessWidget {
  const GiftCommentWidget({
    Key? key,
    required this.giftRequest,
  }) : super(key: key);

  final GiftRequest? giftRequest;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Container(
        width: double.infinity,
        // height: 100.h,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: giftRequest!.comment.isNotEmpty
              ? Text(giftRequest!.comment)
              : Text('No comment from ${giftRequest!.requester.userName}'),
        ),
      ),
    );
  }
}
