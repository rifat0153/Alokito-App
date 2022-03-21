import 'package:alokito_new/modules/team/team_controller.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeamView extends StatelessWidget {
  const TeamView({Key? key}) : super(key: key);

  static const route = '/teams_view';

  @override
  Widget build(BuildContext context) {
    final TeamController controller = Get.find<TeamController>();

    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: MyText(controller.teamList.length.toString()),
        ),
      ),
    );
  }
}
