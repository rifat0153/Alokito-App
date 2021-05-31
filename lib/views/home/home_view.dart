import 'package:alokito_new/controller/auth/auth_controller.dart';
import 'package:alokito_new/services/gift_giver/gift_giver_service.dart';
import 'package:alokito_new/views/gift_giver/gift_giver_view.dart';
import 'package:alokito_new/views/gift_receiver/gift_receiver_view.dart';
import 'package:alokito_new/widgets/home/user_email_widget.dart';
import 'package:alokito_new/widgets/home/user_name_widget.dart';
import 'package:alokito_new/widgets/home/user_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';

class HomeView extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    EasyLoading.dismiss();
    final media = Get.size;

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),

        // persistentFooterButtons: [
        //   Icon(Icons.add),
        //   Icon(Icons.deck),
        // ],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: const Text(
            'User',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          // leading: IconButton(
          //   onPressed: () => Get.back(),
          //   icon: LineIcon.arrowLeft(color: Colors.black),
          // ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/rsz_registration.png'),
                fit: BoxFit.fill),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: media.height * 0.035, width: 0),
              // Row(
              //   children: <Widget>[
              //     SizedBox(width: media.width * 0.03),
              //     const Icon(Icons.menu, color: Colors.white),
              //     const Expanded(
              //       child: Text(
              //         'USER',
              //         textAlign: TextAlign.center,
              //         style: TextStyle(color: Colors.white, fontSize: 30),
              //       ),
              //     ),
              //     const Icon(Icons.settings, color: Colors.white),
              //     SizedBox(width: media.width * 0.03),
              //   ],
              // ),
              SizedBox(height: media.height * 0.03),
              Flexible(
                flex: 6,
                fit: FlexFit.tight,
                child: Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: authController.currentUser.value.when(
                    data: (user) => CircleAvatar(
                      radius: 75,
                      backgroundImage: NetworkImage(user.imageUrl!),
                    ),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (e, s) => CircularProgressIndicator(),
                  ),
                ),
              ),
              // SizedBox(height: media.height * 0.005, width: 0),
              Expanded(
                // padding: const EdgeInsets.only(top: 1),
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
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    SizedBox(width: media.width * 0.18, height: 0),
                    const Text(
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
              GestureDetector(
                onTap: () => Get.toNamed(GiftReceiverView.route),
                child: _GiftRecieverMenu(
                    height: media.height * 0.1, width: media.width * 0.7),
              ),
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
  _GiftGiverMenu({required this.height, required this.width});

  final double height;
  final double width;

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
  _GiftRecieverMenu({required this.height, required this.width});

  final double height;
  final double width;

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
  _CommunityHeroMenu({required this.height, required this.width});

  final double height;
  final double width;

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
  _TeamPlayerMenu({required this.height, required this.width});

  final double height;
  final double width;

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
