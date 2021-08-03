import '../shared/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginInput extends StatefulWidget {
  const LoginInput({required this.hint, required this.onChanged});

  final String hint;
  final Function onChanged;

  @override
  _MyNameInputState createState() => _MyNameInputState();
}

class _MyNameInputState extends State<LoginInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        // color: Color(0xFFc9c9c9),
        border: Border.all(color: LOGIN_COLOR, width: 3.w),
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          style: TextStyle(color: Colors.white, fontSize: 20.sp),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.grey),
            hintText: widget.hint,
          ),
          onChanged: (value) => widget.onChanged(value),
        ),
      ),
    );
  }
}
