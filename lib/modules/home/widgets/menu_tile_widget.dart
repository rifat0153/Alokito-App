import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class MenuTileWidget extends StatelessWidget {
  const MenuTileWidget(
      {Key? key,
      required this.assetPath,
      required this.title,
      required this.width,
      required this.height,
      required this.function})
      : super(key: key);

  final String assetPath;
  final String title;
  final double width;
  final double height;
  final Callback function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: SizedBox(
        height: height,
        width: width,
        child: Image.asset(
          assetPath,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
