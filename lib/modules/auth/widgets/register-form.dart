import '../../../shared/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../auth_controller.dart';
import 'reg_image_input.dart';
import '../login_controller.dart';
import '../../../shared/my_name_input.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';

class RegisterForm extends StatelessWidget {
  final Function setLogin;
  RegisterForm(this.setLogin);
  final LoginController loginController = Get.find();
  final AuthController authController = Get.find();

  void _register() {
    loginController.verifyRegistration();
  }

  @override
  Widget build(BuildContext context) {
    // EasyLoading.dismiss();
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/rsz_registration.png'),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Container(
            height: Get.size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: Get.size.height * 0.07),
                      Text(
                        'Registration',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      SizedBox(height: Get.size.height * 0.04),
                      // User Image Input
                      RegImageInput(),
                      SizedBox(height: Get.size.height * 0.03),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MyNameInput(
                            hint: 'First Name',
                            onChanged: (value) => loginController
                                .firstName.value = value as String),
                      ),
                      SizedBox(height: Get.size.height * 0.02),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MyNameInput(
                            hint: 'Last Name',
                            onChanged: (value) => loginController
                                .lastName.value = value as String),
                      ),
                      SizedBox(height: Get.size.height * 0.02),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MyNameInput(
                            hint: 'Email Address',
                            onChanged: (value) =>
                                loginController.email.value = value as String),
                      ),
                      SizedBox(height: Get.size.height * 0.02),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MyNameInput(
                            hint: 'User Name',
                            onChanged: (value) => loginController
                                .userName.value = value as String),
                      ),
                      SizedBox(height: Get.size.height * 0.02),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MyNameInput(
                            hint: 'Password',
                            onChanged: (value) => loginController
                                .password.value = value as String),
                      ),
                      SizedBox(height: Get.size.height * 0.02),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MyNameInput(
                            hint: 'Confirm Password',
                            onChanged: (value) => loginController
                                .confirmPassword.value = value as String),
                      ),
                      SizedBox(height: Get.size.height * 0.02),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: () => setLogin(true),
                      child: RichText(
                        text: TextSpan(
                          text: 'Back to ',
                          style: TextStyle(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
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
                              value: loginController
                                  .aggreedToTermsAndCondition.value,
                              onChanged: (value) => loginController
                                  .aggreedToTermsAndCondition.value = value!),
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: 'I agree to the ',
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' TERMS AND CONDITIONS',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.cyan),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.blue,
                      onPressed: () => _register(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.003)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
