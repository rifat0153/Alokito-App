import 'package:alokito_new/modules/team/team_controller.dart';
import 'package:alokito_new/modules/team/widgets/team_preview_widget.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/constants.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:alokito_new/shared/widget/skeleton_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../home/widgets/my_bottom_nav_bar.dart';
import '../widgets/team_header_section.dart';
import '../widgets/team_search_section.dart';

class JoinTeamView extends StatelessWidget {
  const JoinTeamView({Key? key}) : super(key: key);

  static const route = '/join_team_view';

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TeamController>();

    return Scaffold(
      bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 53, 66, 92),
          child: MyBottomNavbar()),
      body: SkeletonWidget(
        titleWidget: const MyText('Join a team'),
        assetPath: MyAssets.backgroundPeople,
        child: Obx(
          () => SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AspectRatio(
                  aspectRatio: 16 / 10.5,
                  child: TeamHeaderSection(
                    topTeam: controller.topTeamList.first,
                  ),
                ),
                SizedBox(height: 15.h),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kSpacing * 2),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Top 5 Teams',
                              style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w600))),
                      SizedBox(height: 8.h),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: controller.topTeamList.length,
                          itemBuilder: ((context, index) {
                            return TeamPreviewWidget(
                                team: controller.topTeamList[index]);
                          }))
                    ])),
                const Divider(color: Colors.transparent),
                AspectRatio(
                  aspectRatio: 112 / 60,
                  child: TeamSearchSection(controller: controller),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.searchResultList.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return TeamPreviewWidget(
                          team: controller.searchResultList.value[index]);
                    }),
                const Divider(color: Colors.transparent),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
