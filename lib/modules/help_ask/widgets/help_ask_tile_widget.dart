import 'package:alokito_new/shared/constants.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/help_ask/help_ask.dart';

class HelpAskTileWidget extends StatelessWidget {
  const HelpAskTileWidget({Key? key, required this.helpAsk}) : super(key: key);

  final HelpAsk helpAsk;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing, vertical: kSpacing),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kRadius * 2),
        child: Container(
          color: Colors.amber,
          child: Row(
            children: [
              Image.network(
                helpAsk.imageUrl ?? '',
                width: 120.w,
                height: 120.h,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(kSpacing),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(helpAsk.creator?.firstName ?? ''),
                      MyText(helpAsk.distance.toString()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MyText(helpAsk.location ?? ''),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
