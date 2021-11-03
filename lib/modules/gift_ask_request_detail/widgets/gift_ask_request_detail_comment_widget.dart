import 'package:flutter/material.dart';

import '../../../models/gift_ask_request.dart/gift_ask_request.dart';

class GiftAskRequestDetailCommentWidget extends StatelessWidget {
  const GiftAskRequestDetailCommentWidget({
    Key? key,
    required this.giftAskRequest,
  }) : super(key: key);

  final GiftAskRequest giftAskRequest;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Container(
        width: double.infinity,
        // height: 100.h,
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2), borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: giftAskRequest.comment.isNotEmpty
              ? Text(giftAskRequest.comment)
              : Text('No comment from ${giftAskRequest.giftAsk.user.userName}'),
        ),
      ),
    );
  }
}
