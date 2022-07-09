import 'package:alokito_new/modules/help_ask/help_ask_controller.dart';
import 'package:alokito_new/modules/help_ask/help_ask_create_view.dart';
import 'package:alokito_new/modules/help_ask/help_ask_list_view.dart';
import 'package:alokito_new/modules/team/team_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HelpAskView extends StatelessWidget {
  HelpAskView({Key? key}) : super(key: key);
  static const route = '/help_ask_view';

  final HelpAskController controller = Get.find<HelpAskController>();

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
                  Get.toNamed(HelpAskListView.route);
                },
                child: SvgPicture.asset(MyAssets.joinTeamIcon),
              ),
              const SizedBox(
                height: kSpacing * 2,
              ),
              InkWell(
                onTap: () => Get.toNamed(HelpAskCreateView.route),
                child: SvgPicture.asset(MyAssets.createTeamIcon),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
