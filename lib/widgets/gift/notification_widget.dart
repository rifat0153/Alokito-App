import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class NotificationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.size.height * 0.04,
      width: Get.size.width * 0.08,
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.center,
              child: Icon(
                FontAwesome.bell,
                color: Colors.yellow,
                size: 30,
              )),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              '10',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
