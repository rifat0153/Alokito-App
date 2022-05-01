import 'package:alokito_new/modules/team/create_team_view.dart';
import 'package:alokito_new/modules/team/team_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/constants.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TeamView extends StatelessWidget {
  const TeamView({Key? key}) : super(key: key);

  static const route = '/teams_view';

  @override
  Widget build(BuildContext context) {
    final TeamController controller = Get.find<TeamController>();

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
                  // TODO
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
