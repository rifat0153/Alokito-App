import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/styles.dart';

class GuideLines extends StatelessWidget {
  const GuideLines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 16.w),
        const Icon(FontAwesomeIcons.bullhorn),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '* Please see the ',
                        style: whiteFontStyle.copyWith(fontSize: notificationFontSize, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Guideline for Food Adding',
                        style: boldFontStyle.copyWith(color: Colors.red, fontSize: notificationFontSize),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '* Request to follow ',
                        style: whiteFontStyle.copyWith(fontSize: notificationFontSize, color: Colors.black),
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
    );
  }
}