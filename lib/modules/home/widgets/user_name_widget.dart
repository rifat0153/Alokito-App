import 'package:alokito_new/models/user/local_user.dart';
import 'package:flutter/material.dart';

class UserNameWidget extends StatelessWidget {
  const UserNameWidget({
    Key? key,
    required this.context,
    required LocalUser this.localUser,
  }) : super(key: key);

  final LocalUser localUser;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Text(
      localUser.userName,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
    );
  }
}
