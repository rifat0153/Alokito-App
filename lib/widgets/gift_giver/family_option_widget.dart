import 'package:flutter/material.dart';

class FamilyOptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Package For'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _Option('Small Family'),
            _Option('Large Family'),
          ],
        ),
      ],
    );
  }
}

class _Option extends StatelessWidget {
  _Option(this.text);
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 9,
          width: 9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
          ),
        ),
        SizedBox(width: 6),
        Text(text)
      ],
    );
  }
}
