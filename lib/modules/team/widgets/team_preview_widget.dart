import 'package:alokito_new/models/team/team_response.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/constants.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../views/team_deails_view.dart';

class TeamPreviewWidget extends StatelessWidget {
  const TeamPreviewWidget({Key? key, required this.team}) : super(key: key);

  final Team team;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(TeamDetailsView.route, arguments: team),
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.lightGrey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(kRadius),
        ),
        margin: const EdgeInsets.only(bottom: kSpacing),
        padding: const EdgeInsets.all(kSpacing * 2),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100.w,
                height: 100.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2.5.w),
                    borderRadius: BorderRadius.circular(kRadius * 2),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(team.imageUrl ?? ''),
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyText(
                    team.teamName ?? '',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                  SizedBox(
                    width: 180.w,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        team.location ?? '',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite,
                          size: 22.sp, color: const Color(0xff10CEE6)),
                      const SizedBox(width: kSpacing),
                      const MyText('575'),
                    ],
                  ),
                  MyText(
                    'Objective',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                  MyText(team.objective ?? ''),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
