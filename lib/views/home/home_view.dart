import 'package:alokito_new/controller/auth/auth_controller.dart';
import 'package:alokito_new/views/gift_giver/gift_giver_view.dart';
import 'package:alokito_new/widgets/home/user_email_widget.dart';
import 'package:alokito_new/widgets/home/user_name_widget.dart';
import 'package:alokito_new/widgets/home/user_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    EasyLoading.dismiss();
    final media = Get.size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/rsz_registration.png'),
                fit: BoxFit.fill),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // SizedBox(height: media.height * 0.035, width: 0),
              Row(
                children: <Widget>[
                  SizedBox(width: media.width * 0.03),
                  Icon(Icons.menu, color: Colors.white),
                  Expanded(
                    child: Text(
                      'USER',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  Icon(Icons.settings, color: Colors.white),
                  SizedBox(width: media.width * 0.03),
                ],
              ),
              SizedBox(height: media.height * 0.07),
              Flexible(
                flex: 5,
                fit: FlexFit.loose,
                child: Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: authController.currentUser.value.when(
                    data: (user) => CircleAvatar(
                      radius: 75,
                      backgroundImage: NetworkImage(user.imageUrl!),
                    ),
                    loading: () => Center(
                        child: Expanded(child: CircularProgressIndicator())),
                    error: (e, s) => Center(child: CircularProgressIndicator()),
                  ),
                ),
              ),
              // SizedBox(height: media.height * 0.005, width: 0),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: UserNameWidget(
                    localUser: authController.currentUser.value,
                    context: context),
              ),
              Expanded(
                child: UserEmailWidget(
                    context: context,
                    localUser: authController.currentUser.value),
              ),
              // SizedBox(height: media.height * 0.06),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    SizedBox(width: media.width * 0.18, height: 0),
                    Text(
                      'and you are a...',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(GiftGiverView.route),
                child: _GiftGiverMenu(
                    height: media.height * 0.1, width: media.width * 0.7),
              ),
              _GiftRecieverMenu(
                  height: media.height * 0.1, width: media.width * 0.7),
              _CommunityHeroMenu(
                  height: media.height * 0.1, width: media.width * 0.7),
              _TeamPlayerMenu(
                height: media.height * 0.1,
                width: media.width * 0.7,
              ),
              Expanded(child: Container()),
              UserNavbar()
            ],
          ),
        ),
      ),
    );
  }
}

class _GiftGiverMenu extends StatelessWidget {
  final double height;
  final double width;

  _GiftGiverMenu({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        // color: Colors.blue,
        image: DecorationImage(
          image: AssetImage('assets/images/gift-giver.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _GiftRecieverMenu extends StatelessWidget {
  final double height;
  final double width;

  _GiftRecieverMenu({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        // color: Colors.blue,
        image: DecorationImage(
          image: AssetImage('assets/images/gift-reciever.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _CommunityHeroMenu extends StatelessWidget {
  final double height;
  final double width;

  _CommunityHeroMenu({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        // color: Colors.blue,
        image: DecorationImage(
          image: AssetImage('assets/images/community-hero.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _TeamPlayerMenu extends StatelessWidget {
  final double height;
  final double width;

  _TeamPlayerMenu({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        // color: Colors.blue,
        image: DecorationImage(
          image: AssetImage('assets/images/team-player.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
