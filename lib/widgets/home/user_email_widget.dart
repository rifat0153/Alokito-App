import 'package:alokito_new/models/user/local_user.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserEmailWidget extends StatelessWidget {
  const UserEmailWidget({
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
              user.email,
              style: TextStyle(
                color: Colors.black,
                // fontFamily: GoogleFonts.lato().fontFamily,
                fontSize: 15,
              ),
            ),
        loading: () => CircularProgressIndicator(),
        error: (e, s) => CircularProgressIndicator());
  }
}
