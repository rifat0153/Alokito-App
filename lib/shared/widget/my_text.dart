import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class MyText extends StatelessWidget {
  MyText(this.data, {this.color = Colors.black, this.fontSize = 14, this.fontWeight = FontWeight.normal});

  Color color;
  String data;
  FontWeight fontWeight;
  double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      softWrap: true,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
