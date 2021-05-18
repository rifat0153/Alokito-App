import 'package:flutter/material.dart';

class FamilyOptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              const SizedBox(width: 30),
              const Text(
                'Package For',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 30),
            _Option('Small Family'),
            const Spacer(),
            _Option('Large Family'),
            const SizedBox(width: 30)
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
