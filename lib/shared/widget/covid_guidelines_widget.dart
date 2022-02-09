import '../styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CovidGuideLines extends StatelessWidget {
  const CovidGuideLines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          const SizedBox(width: 16),
          const Icon(FontAwesomeIcons.bullhorn),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '* Please see the ',
                          style: whiteFontStyle.copyWith(
                              fontSize: notificationFontSize,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Guideline for Food Adding',
                          style: boldFontStyle.copyWith(
                              color: Colors.red,
                              fontSize: notificationFontSize),
                        ),
                      ],
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '* Request to follow ',
                          style: whiteFontStyle.copyWith(
                              fontSize: notificationFontSize,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Covid - 19: Sharing & Safety Guidelines',
                          style: boldFontStyle.copyWith(
                            color: Colors.red,
                            fontSize: notificationFontSize,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
