import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class NotificationIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      child: Stack(
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            color: Colors.yellow,
            size: 30,
          ),
          Positioned(
            top: 25,
            right: 0,
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
