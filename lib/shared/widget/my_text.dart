import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class MyText extends StatelessWidget {
  MyText(
    this.data, {
    this.color = Colors.black,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.maxLines = 1,
    this.textAlign = TextAlign.start,
  });

  Color color;
  String data;
  FontWeight fontWeight;
  double fontSize;
  int maxLines;
  TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      softWrap: true,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
