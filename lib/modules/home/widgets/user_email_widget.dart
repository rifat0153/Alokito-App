import 'package:alokito_new/models/user/local_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserEmailWidget extends StatelessWidget {
  const UserEmailWidget({
    Key? key,
    required this.context,
    required LocalUser this.localUser,
  }) : super(key: key);

  final LocalUser localUser;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Text(
      localUser.email,
      style: TextStyle(
        color: Colors.black,
        // fontFamily: GoogleFonts.lato().fontFamily,
        fontSize: 18.sp,
      ),
    );
  }
}
