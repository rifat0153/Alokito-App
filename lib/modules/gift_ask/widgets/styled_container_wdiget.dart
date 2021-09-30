import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/config.dart';

class StyledContainer extends StatelessWidget {
  const StyledContainer({Key? key, required this.widget}) : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: giftAddFormColor,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: widget,
    );
  }
}
