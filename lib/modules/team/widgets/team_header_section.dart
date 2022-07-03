import 'package:alokito_new/models/team/team_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../views/team_deails_view.dart';
import 'c_shape.dart';

class TeamHeaderSection extends StatelessWidget {
  const TeamHeaderSection({Key? key, required this.topTeam}) : super(key: key);

  final Team topTeam;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff353445),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Opacity(
              opacity: 0.75,
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: CustomPaint(
                        size: const Size(150, (150 * 0.8859649122807017)),
                        painter: LastPainter()),
                  ),
                  AspectRatio(
                    aspectRatio: 1,
                    child: CustomPaint(
                        size: const Size(150, (150 * 1.0957095709570956)),
                        painter: MiddlePainter()),
                  ),
                  AspectRatio(
                    aspectRatio: 1,
                    child: CustomPaint(
                        size: const Size(150, (150 * 0.8688046647230321)),
                        painter: Top1Painter()),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 1),
                    Column(
                      children: <Widget>[
                        //Explore Button
                        ElevatedButton(
                          onPressed: () {
                            Get.toNamed(TeamDetailsView.route,
                                arguments: {'teamData': topTeam});
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                              side: BorderSide(
                                width: 4.0.w,
                                color: Colors.white,
                                style: BorderStyle.solid,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  ScreenUtil().setWidth(10.r),
                                ),
                              ),
                              fixedSize: Size(100.w, 45.h)),
                          child: Text('Explore',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                              )),
                        ),
                        Text('Team',
                            style: TextStyle(
                                fontSize: 50.sp, color: Colors.white)),
                        Text('of the week',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 26.sp,
                                color: Colors.white)),
                        const Divider(color: Colors.transparent)
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100.w,
                      height: 100.w,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: Colors.black, width: 3.w),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(topTeam.imageUrl ?? ''))),
                    ),
                    Text(topTeam.teamName ?? 'No Name Found',
                        style: TextStyle(fontSize: 16.sp, color: Colors.white)),
                    SizedBox(height: 2.h),
                    Text(topTeam.location ?? 'No Location Found',
                        style:
                            TextStyle(fontSize: 12.sp, color: Colors.white60)),
                    SizedBox(height: 4.h),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite,
                            size: 16.sp, color: const Color(0xff10CEE6)),
                        SizedBox(width: 4.w),
                        Text(topTeam.likesCount.toString(),
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.white))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
