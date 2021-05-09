import 'package:alokito_new/widgets/gift/notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class GiftGiverView extends StatelessWidget {
  static const route = '/giftgiver';

  @override
  Widget build(BuildContext context) {
    final media = Get.size;
    return Scaffold(
      body: Container(
        height: Get.size.height,
        width: Get.size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: media.height * 0.065, width: 0),
            Row(
              children: <Widget>[
                SizedBox(width: media.width * 0.03),
                Icon(Icons.menu, color: Colors.white),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Gift Giver',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                NotificationWidget(),
                SizedBox(width: 10),
                Icon(Icons.settings, color: Colors.white),
                SizedBox(width: media.width * 0.03),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
