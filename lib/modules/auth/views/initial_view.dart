import 'package:alokito_new/core/language/language_controller.dart';
import 'package:alokito_new/modules/auth/auth_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialView extends StatelessWidget {
  const InitialView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthenticationWrapper(),
    );
  }
}
