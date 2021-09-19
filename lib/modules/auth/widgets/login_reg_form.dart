import '../controllers/auth_controller.dart';
import '../controllers/login_controller.dart';
import 'reg_image_input.dart';
import '../../../shared/config.dart';
import '../../../shared/login_input.dart';
import '../../../shared/my_name_input.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class LoginRegFormView extends StatefulWidget {
  const LoginRegFormView();
  static const route = 'LoginFormView';

  @override
  _LoginRegFormViewState createState() => _LoginRegFormViewState();
}

class _LoginRegFormViewState extends State<LoginRegFormView> {
  final LoginController loginController = Get.find();

  bool isLogin = true;

  void toggleLogin() {
    setState(() {
      isLogin = !isLogin;
    });
    if (!isLogin) {
      Get.find<AuthController>().registering.value = true;
    } else {
      Get.find<AuthController>().registering.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLogin ? buildLoginForm(context, toggleLogin) : buildRegisterForm(context, toggleLogin),
    );
  }

  void _register() {
    loginController.verifyRegistration();
  }

  Container buildLoginForm(BuildContext context, Callback toggle) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        // color: Colors.blue,
        image: DecorationImage(
          image: AssetImage('assets/images/login.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: LoginInput(
              hint: 'Username',
              onChanged: (value) => loginController.email.value = value.toString().trim(),
            ),
          ),
          SizedBox(height: Get.size.height * 0.03),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: LoginInput(
              hint: 'Password',
              onChanged: (value) => loginController.password.value = value as String,
            ),
          ),
          SizedBox(height: Get.size.height * 0.01),
          _LoginButton(loginController: loginController),
          SizedBox(height: Get.size.height * 0.02),
          GestureDetector(
            onTap: () {
              toggle();
            },
            child: RichText(
              text: const TextSpan(
                text: 'Already have an account ? ',
                style: TextStyle(color: Colors.white),
                children: <TextSpan>[
                  TextSpan(
                    text: ' SIGN UP',
                    style: TextStyle(fontWeight: FontWeight.bold, color: loginColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildRegisterForm(BuildContext context, Callback toggle) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/rsz_registration.png'), fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: SizedBox(
          // height: Get.size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    'Registration',
                    style: TextStyle(color: Colors.white, fontSize: 30.sp),
                  ),
                  SizedBox(height: 50.h),
                  // User Image Input
                  RegImageInput(),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: MyNameInput(
                        hint: 'First Name', onChanged: (value) => loginController.firstName.value = value as String),
                  ),
                  SizedBox(height: 13.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: MyNameInput(
                        hint: 'Last Name', onChanged: (value) => loginController.lastName.value = value as String),
                  ),
                  SizedBox(height: 13.h),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: MyNameInput(
                        hint: 'Email Address', onChanged: (value) => loginController.email.value = value as String),
                  ),
                  SizedBox(height: 13.h),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: MyNameInput(
                        hint: 'User Name', onChanged: (value) => loginController.userName.value = value as String),
                  ),
                  SizedBox(height: 13.h),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: MyNameInput(
                        hint: 'Password', onChanged: (value) => loginController.password.value = value as String),
                  ),
                  SizedBox(height: 13.h),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: MyNameInput(
                        hint: 'Confirm Password',
                        onChanged: (value) => loginController.confirmPassword.value = value as String),
                  ),
                  SizedBox(height: 13.h),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {
                      toggle();
                    },
                    child: RichText(
                      text: const TextSpan(
                        text: 'Back to ',
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Login',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Get.size.height * 0.001),
                  Row(
                    children: <Widget>[
                      SizedBox(width: Get.size.width * 0.1),
                      Obx(
                        () => Checkbox(
                            value: loginController.aggreedToTermsAndCondition.value,
                            onChanged: (value) => loginController.aggreedToTermsAndCondition.value = value!),
                      ),
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            text: 'I agree to the ',
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' TERMS AND CONDITIONS',
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.cyan),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Obx(() => loginController.regStatus.value.when(
                      registering: () => const CircularProgressIndicator(),
                      registered: () => const SizedBox(),
                      notRegistered: () => MaterialButton(
                            onPressed: _register,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.blue,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.sp),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(fontSize: 13.sp, color: Colors.white),
                              ),
                            ),
                          ))),
                  SizedBox(height: 10.h)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    Key? key,
    required this.loginController,
  }) : super(key: key);

  final LoginController loginController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => loginController.loginStatus.value.when(
        logginIn: () => const CircularProgressIndicator(color: MyColors.loginColor),
        loggedIn: () => const Text('Logged IN'),
        notLoggedIn: () => MaterialButton(
          onPressed: loginController.verifyInputAndLogin,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
          color: loginColor,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 5.w),
            child: Text(
              'Log In',
              style: TextStyle(color: Colors.white, fontSize: 25.sp, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        error: (err) => MaterialButton(
          onPressed: loginController.verifyInputAndLogin,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
          color: loginColor,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 5.w),
            child: Text(
              'Log In',
              style: TextStyle(color: Colors.white, fontSize: 25.sp, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
