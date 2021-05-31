import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class NotificationIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.ac_unit,
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
