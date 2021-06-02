import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RequesterGiftRecords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Gift offered', style: boldFontStyle),
            Text('Gift received', style: boldFontStyle),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Text(
                '0',
                textAlign: TextAlign.center,
              ),
            ),
            const Text('All time'),
            Expanded(
              child: Text(
                '0',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              color: GIFT_ADD_FORM_SUBMIT,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Transform.rotate(
                  angle: -math.pi / 4,
                  child: const FaIcon(
                    FontAwesomeIcons.phoneVolume,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
            MaterialButton(
              color: GIFT_ADD_FORM_SUBMIT,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: const FaIcon(
                  FontAwesomeIcons.commentDots,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
