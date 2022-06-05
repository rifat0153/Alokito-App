import 'package:alokito_new/modules/team/team_controller.dart';
import 'package:alokito_new/modules/team/widgets/team_preview_widget.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/constants.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:alokito_new/shared/widget/skeleton_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JoinTeamView extends StatelessWidget {
  const JoinTeamView({Key? key}) : super(key: key);

  static const route = '/join_team_view';

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TeamController>();

    return SkeletonWidget(
      titleWidget: const MyText('Join a team'),
      assetPath: MyAssets.backgroundPeople,
      child: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(horizontal: kSpacing * 2),
          child: Column(
            children: [
              if (controller.topTeam.value != null) TeamPreviewWidget(team: controller.topTeam.value!),
            ],
          ),
        ),
      ),
    );
  }
}
