import 'package:alokito_new/modules/auth/auth_wrapper.dart';
import 'package:flutter/material.dart';

class InitialView extends StatelessWidget {
  const InitialView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthenticationWrapper();
  }
}
