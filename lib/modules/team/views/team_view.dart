import 'package:alokito_new/modules/team/team_service.dart';
import 'package:alokito_new/modules/team/views/create_team_view.dart';
import 'package:alokito_new/modules/team/team_controller.dart';
import 'package:alokito_new/modules/team/views/join_team_view.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TeamView extends StatelessWidget {
  TeamView({Key? key}) : super(key: key);

  static const route = '/teams_view';

  // final TeamController controller = Get.put(TeamController(service: TeamService()));
  final TeamController controller = Get.find<TeamController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: 1.sw,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(MyAssets.teamPeopleIcon),
              InkWell(
                onTap: () {
                  Get.toNamed(JoinTeamView.route);
                },
                child: SvgPicture.asset(MyAssets.joinTeamIcon),
              ),
              const SizedBox(
                height: kSpacing * 2,
              ),
              InkWell(
                onTap: () => Get.toNamed(CreateTeamView.route),
                child: SvgPicture.asset(MyAssets.createTeamIcon),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
