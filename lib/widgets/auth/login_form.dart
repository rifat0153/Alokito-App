import '../../shared/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/auth/auth_controller.dart';
import '../../shared/login_input.dart';
import '../../controller/auth/login_controller.dart';
import '../../shared/my_name_input.dart';

class LoginForm extends StatelessWidget {
  final LoginController loginController = Get.find();
  final Function setLogin;

  LoginForm(this.setLogin);

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.find();

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
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: LoginInput(
              hint: 'Username',
              onChanged: (value) =>
                  loginController.email.value = value.toString().trim(),
            ),
          ),
          SizedBox(height: Get.size.height * 0.03),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: LoginInput(
              hint: 'Password',
              onChanged: (value) =>
                  loginController.password.value = value as String,
            ),
          ),
          SizedBox(height: Get.size.height * 0.01),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: MaterialButton(
              onPressed: () => loginController.verifyLogin(),
              color: LOGIN_COLOR,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
                child: Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(height: Get.size.height * 0.02),
          GestureDetector(
            onTap: () => setLogin(false),
            child: RichText(
              text: TextSpan(
                text: 'Already have an account ? ',
                style: TextStyle(color: Colors.white),
                children: <TextSpan>[
                  TextSpan(
                    text: ' SIGN UP',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: LOGIN_COLOR),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
