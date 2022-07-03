import 'package:alokito_new/shared/widget/skeleton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/config.dart';
import '../../../shared/constants.dart';
import '../../../shared/widget/my_text.dart';
import '../../home/widgets/my_bottom_nav_bar.dart';

class TeamDetailsView extends StatelessWidget {
  const TeamDetailsView({Key? key}) : super(key: key);

  static const route = '/team_details_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 53, 66, 92),
          child: MyBottomNavbar()),
      body: SkeletonWidget(
          titleWidget: MyText('Create a Team'),
          assetPath: MyAssets.backgroundPeople,
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 10,
                child: Container(
                  color: Colors.grey,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(Icons.camera_alt, size: 100.w),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: const EdgeInsets.only(
                              left: kSpacing * 2, bottom: kSpacing * 2),
                          width: 85.w,
                          height: 85.w,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
