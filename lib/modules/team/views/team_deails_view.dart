import 'package:alokito_new/modules/team/team_controller.dart';
import 'package:alokito_new/shared/widget/skeleton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../models/team/team_response.dart';
import '../../../shared/config.dart';
import '../../../shared/constants.dart';
import '../../../shared/widget/my_text.dart';
import '../../home/widgets/my_bottom_nav_bar.dart';

class TeamDetailsView extends StatelessWidget {
  const TeamDetailsView({
    Key? key,
    required this.team,
  }) : super(key: key);

  static const route = '/team_details_view';

  final Team team;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TeamController>();

    return Scaffold(
      bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 53, 66, 92),
          child: MyBottomNavbar()),
      body: SkeletonWidget(
          titleWidget: const MyText('Back'),
          assetPath: MyAssets.backgroundPeople,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                AspectRatio(
                    aspectRatio: 16 / 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(team.coverImageUrl ?? ''),
                        ),
                      ),
                      child: team.coverImageUrl == null
                          ? Icon(Icons.camera_alt, size: 100.w)
                          : Container(),
                    )),
                const Divider(color: Colors.transparent),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 110.w,
                      height: 110.w,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(kRadius * 2.5),
                        border: Border.all(color: Colors.black, width: 2.5.w),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(team.imageUrl ?? ''),
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          team.teamName ?? '',
                          style: TextStyle(fontSize: 32.sp),
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
                        SizedBox(height: 2.w),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.favorite,
                                size: 16.sp, color: const Color(0xff10CEE6)),
                            SizedBox(width: 4.w),
                            Text(team.likesCount.toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 14.sp)),
                            SizedBox(width: 15.w),
                            Icon(Icons.people,
                                size: 16.sp, color: const Color(0xff10CEE6)),
                            SizedBox(width: 4.w),
                            Text(team.memberCount.toString() + ' members',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 14.sp))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Divider(color: Colors.transparent, height: 25.h),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  color: Colors.grey.withOpacity(0.5),
                  padding: const EdgeInsets.all(kSpacing),
                  child: Text(team.teamDetails ?? 'No details found'),
                  // child: Text(
                  //     'Amet ad non duis est sit dolore. Culpa nisi do Lorem nisi esse irure cillum duis ad ad cupidatat eiusmod. Adipisicing excepteur non ut reprehenderit. Reprehenderit nulla magna dolor cupidatat dolore pariatur. Reprehenderit deserunt mollit consequat amet nisi. Reprehenderit non tempor consectetur excepteur nisi eu amet enim sunt nisi exercitation voluptate occaecat consectetur. Et ipsum velit ad aliqua aliqua reprehenderit ipsum nostrud nisi quis ex id nulla.'),
                ),
                const Divider(color: Colors.transparent),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.w),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Previous Goal Achievement',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff10CEE6),
                            borderRadius: BorderRadius.circular(3.r),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  team.previousGoalSummary ??
                                      'No Achievement found',
                                  maxLines: 1,
                                  textAlign: TextAlign.center))),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton.icon(
                            icon: Icon(Icons.favorite, size: 20.w),
                            onPressed: () {
                              controller.likeTeam(teamId: team.id!);
                            },
                            label: const Text('Love'),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.w, vertical: 2.h),
                              primary: const Color(0xff343344),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r)),
                            ),
                          ),
                          ElevatedButton.icon(
                            icon: Icon(Icons.share, size: 20.w),
                            onPressed: () {},
                            label: const Text('Share'),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.w, vertical: 2.h),
                              primary: const Color(0xff343344),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25.h),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Join Team',
                          style: TextStyle(fontSize: 24.sp),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          fixedSize: Size(200.w, 45.h),
                          primary: const Color(0xff343344),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
