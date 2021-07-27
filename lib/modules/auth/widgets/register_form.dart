import 'package:alokito_new/modules/auth/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'reg_image_input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../login_controller.dart';
import '../auth_controller.dart';
import '../../../shared/my_name_input.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm();

  final LoginController loginController = Get.put(LoginController());
  final AuthController authController = Get.find();

  void _register() {
    loginController.verifyRegistration();
  }

  @override
  Widget build(BuildContext context) {
    // EasyLoading.dismiss();
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/images/rsz_registration.png'), fit: BoxFit.cover),
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
                            hint: 'First Name',
                            onChanged: (value) => loginController.firstName.value = value as String),
                      ),
                      SizedBox(height: 13.h),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MyNameInput(
                            hint: 'Last Name',
                            onChanged: (value) => loginController.lastName.value = value as String),
                      ),
                      SizedBox(height: 13.h),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MyNameInput(
                            hint: 'Email Address',
                            onChanged: (value) => loginController.email.value = value as String),
                      ),
                      SizedBox(height: 13.h),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MyNameInput(
                            hint: 'User Name',
                            onChanged: (value) => loginController.userName.value = value as String),
                      ),
                      SizedBox(height: 13.h),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MyNameInput(
                            hint: 'Password',
                            onChanged: (value) => loginController.password.value = value as String),
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
                        onPressed: () => Get.to(LoginForm()),
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
                                onChanged: (value) =>
                                    loginController.aggreedToTermsAndCondition.value = value!),
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
        ),
      ),
    );
  }
}
