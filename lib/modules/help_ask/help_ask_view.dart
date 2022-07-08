import 'package:alokito_new/modules/help_ask/help_ask_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:alokito_new/shared/widget/skeleton_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpAskView extends StatelessWidget {
  HelpAskView({Key? key}) : super(key: key);
  static const route = '/help_ask_view';

  final HelpAskController controller = Get.find<HelpAskController>();

  @override
  Widget build(BuildContext context) {
    return SkeletonWidget(
      titleWidget: const MyText('Help Asks', fontWeight: FontWeight.bold),
      assetPath: MyAssets.backgroundPeople,
      child: Obx(
        () => Container(
          child: MyText(
            controller.helpAsks.value.length.toString(),
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
