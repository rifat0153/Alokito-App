import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/gift_giver/gift_giver_view.dart';
import 'package:alokito_new/modules/home/widgets/user_email_widget.dart';
import 'package:alokito_new/modules/home/widgets/user_name_widget.dart';
import 'package:alokito_new/modules/home/widgets/user_navbar.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_view.dart';
import 'package:alokito_new/shared/my_drawer_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final AuthController authController = Get.find<AuthController>();
  final media = Get.size;

  @override
  Widget build(BuildContext context) {
    authController.bindMyUserStream();

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        extendBody: true,
        drawer: MyDrawer(),
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          title: const Text(
            'User',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
          ],
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: _buildBody(media: media, authController: authController),
      ),
    );
  }
}

class _buildBody extends StatelessWidget {
  const _buildBody({
    Key? key,
    required this.media,
    required this.authController,
  }) : super(key: key);

  final Size media;
  final AuthController authController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/rsz_registration.png'), fit: BoxFit.fill),
      ),
      child: Stack(
        children: [
          Column(
            children: <Widget>[
              SizedBox(height: media.height * 0.1, width: 0),
              _UserImageWidget(authController: authController),
              Obx(
                () => Flexible(
                  child: UserNameWidget(localUser: authController.currentUser.value, context: context),
                ),
              ),
              Obx(
                () => Flexible(
                  child: UserEmailWidget(context: context, localUser: authController.currentUser.value),
                ),
              ),
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
                child: _GiftGiverMenu(height: media.height * 0.1, width: media.width * 0.7),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(GiftReceiverView.route);
                  // Get.find<GiftController>().bindLocationData();
                },
                child: _GiftRecieverMenu(height: media.height * 0.1, width: media.width * 0.7),
              ),
              _CommunityHeroMenu(height: media.height * 0.1, width: media.width * 0.7),
              _TeamPlayerMenu(
                height: media.height * 0.1,
                width: media.width * 0.7,
              ),
              Flexible(flex: 2, child: Container()),
            ],
          ),
          Positioned(
            width: Get.size.width,
            bottom: 0,
            child: UserNavbar(),
          )
        ],
      ),
    );
  }
}

class _UserImageWidget extends StatefulWidget {
  const _UserImageWidget({Key? key, required this.authController}) : super(key: key);

  final AuthController authController;

  @override
  __UserImageWidgetState createState() => __UserImageWidgetState();
}

class __UserImageWidgetState extends State<_UserImageWidget> {
  String? userImageUrl;

  late String myKey;

  @override
  void initState() {
    super.initState();

    myKey = FirebaseAuth.instance.currentUser?.uid ?? const Uuid().v4();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 6,
      fit: FlexFit.tight,
      child: Obx(
        () => Padding(
          key: ValueKey(widget.authController.currentUser.value.id ?? myKey),
          padding: const EdgeInsets.only(top: 35),
          child: widget.authController.currentUser.value.imageUrl != null
              ? CircleAvatar(
                  radius: 75,
                  backgroundImage: NetworkImage(
                    widget.authController.currentUser.value.imageUrl ?? '',
                  ),
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}

class _GiftGiverMenu extends StatelessWidget {
  const _GiftGiverMenu({required this.height, required this.width});

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
