import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'c_shape.dart';

class TeamHeaderSection extends StatelessWidget {
  const TeamHeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff353445),
      child: Stack(
        children: [
          // CustomPaint(
          //   size: Size(
          //       150,
          //       (MediaQuery.of(context).size.width * 0.947075208913649)
          //           .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          //   painter: TeamHeaderSectionCustomPainter(),
          // ),
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
                          onPressed: () {},
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
                      ),
                      child: const Placeholder(),
                    ),
                    Text('Team Name',
                        style: TextStyle(fontSize: 16.sp, color: Colors.white)),
                    SizedBox(height: 2.h),
                    Text('Bangladesh',
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
                        Text('575',
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
