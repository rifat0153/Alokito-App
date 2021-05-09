import 'package:alokito_new/models/user/local_user.dart';
import 'package:flutter/material.dart';

class UserNameWidget extends StatelessWidget {
  const UserNameWidget({
    Key? key,
    required this.context,
    required LocalUserInfo this.localUser,
  }) : super(key: key);

  final LocalUserInfo localUser;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return localUser.when(
        data: (user) => Text(
              user.userName,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (e, s) => Center(child: CircularProgressIndicator()));
  }
}
