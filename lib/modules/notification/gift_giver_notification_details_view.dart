import 'package:alokito_new/shared/skeleton_widget.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';

class GiftGiverNotificationDetailsView extends StatelessWidget {
  const GiftGiverNotificationDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkeletonWidget(
        titleWidget: MyText('Notification - Requester Details', fontSize: 15),
        assetPath: 'assets/images/gift_details.png',
        child: Column(
          children: [
            Text('data'),
          ],
        ));
  }
}
