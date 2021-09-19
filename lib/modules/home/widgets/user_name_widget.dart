import '../../../models/user/local_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserNameWidget extends StatelessWidget {
  const UserNameWidget({
    Key? key,
    required this.context,
    required this.localUser,
  }) : super(key: key);

  final LocalUser localUser;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Text(
      localUser.userName,
      style: TextStyle(
        color: Colors.black,
        fontSize: 22.sp,
      ),
    );
  }
}
