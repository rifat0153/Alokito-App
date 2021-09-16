import 'dart:async';

import 'package:alokito_new/modules/auth/views/initial_view.dart';
import 'package:alokito_new/modules/home/views/home_view.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyScreen extends StatefulWidget {
  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final auth = FirebaseAuth.instance;
  late User? user;
  late Timer timer;

  bool emailSent = false;
  bool errorFound = false;
  String errorMessage = '';

  @override
  void initState() {
    user = auth.currentUser;

    timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      checkEmailVerified();
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: user!.emailVerified
          ? HomeView()
          : Center(
              child: emailSent
                  ? MyText(
                      'An email has been sent to ${user?.email} please verify',
                      textAlign: TextAlign.center,
                    )
                  : TextButton(
                      onPressed: sendVerificationEmail,
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          side: BorderSide(width: 2.w),
                        ),
                      ),
                      child: MyText(
                        'Send Verification Email',
                        maxLines: 3,
                      ),
                    ),
            ),
    );
  }

  void sendVerificationEmail() async {
    try {
      if (!user!.emailVerified) {
        await user?.sendEmailVerification();

        setState(() {
          emailSent = true;
        });
      }
    } catch (e) {
      setState(() {
        errorFound = true;
        errorMessage = e.toString();
      });
    }
  }

  Future<void> checkEmailVerified() async {
    user = auth.currentUser;
    await user?.reload();

    if (user!.emailVerified) {
      timer.cancel();
      setState(() {});
      // await Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeView()));
    }
  }
}
