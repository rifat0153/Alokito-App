import 'package:alokito_new/models/team/team_response.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/constants.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeamPreviewWidget extends StatelessWidget {
  const TeamPreviewWidget({Key? key, required this.team}) : super(key: key);

  final Team team;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.lightGrey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(kRadius),
      ),
      margin: const EdgeInsets.only(bottom: kSpacing),
      padding: const EdgeInsets.only(top: kSpacing * 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(kRadius * 2),
            ),
            padding: const EdgeInsets.all(kSpacing / 2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kRadius * 2),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(team.imageUrl ?? ''),
                )),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                MyText(
                  team.teamName ?? '',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
                MyText(team.location ?? ''),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite,
                        size: 22.sp, color: const Color(0xff10CEE6)),
                    const SizedBox(width: kSpacing),
                    MyText(team.location ?? ''),
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
          ),
        ],
      ),
    );
  }
}
