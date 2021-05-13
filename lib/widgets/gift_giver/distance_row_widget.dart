import 'package:flutter/material.dart';

class DistanceListRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(width: 16),
              const Text(
                'Distance',
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _ButtonWidget(text: '1km'),
              _ButtonWidget(text: '2km'),
              _ButtonWidget(text: '5km'),
              _ButtonWidget(text: '10km'),
              _ButtonWidget(text: '15km'),
            ],
          )
        ],
      ),
    );
  }
}

class _ButtonWidget extends StatelessWidget {
  _ButtonWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(5),
      ),
      alignment: Alignment.center,
      child: Text(text),
    );
  }
}
