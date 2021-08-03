import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/auth/widgets/reg_image_input.dart';
import 'package:alokito_new/shared/my_name_input.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/login_input.dart';
import '../../../shared/config.dart';
import '../login_controller.dart';

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
    }else{
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

  Container buildLoginForm(BuildContext context, Function toggle) {
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
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: MaterialButton(
              onPressed: loginController.verifyLogin,
              color: LOGIN_COLOR,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
                child: Text(
                  'Log In',
                  style: TextStyle(color: Colors.white, fontSize: 25.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
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
                    style: TextStyle(fontWeight: FontWeight.bold, color: LOGIN_COLOR),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildRegisterForm(BuildContext context, Function toggle) {
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
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                  MaterialButton(
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
                  ),
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
