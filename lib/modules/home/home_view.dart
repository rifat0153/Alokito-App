import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift_giver/gift_giver_view.dart';
import 'package:alokito_new/modules/home/widgets/user_email_widget.dart';
import 'package:alokito_new/modules/home/widgets/user_name_widget.dart';
import 'package:alokito_new/modules/home/widgets/user_navbar.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_view.dart';
import 'package:alokito_new/modules/settings/views/settings_view.dart';
import 'package:alokito_new/shared/my_drawer_widget.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final AuthController authController = Get.find<AuthController>();
  final media = Get.size;

  @override
  void initState() {
    super.initState();
    // authController.authStream.value?.sendEmailVerification();
  }

  @override
  Widget build(BuildContext context) {
    print('UserVerified:  ' + authController.authStream.value!.emailVerified.toString());
    authController.authStream.value?.reload();

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
              onPressed: () {
                Navigator.pushNamed(context, SettingsView.route);
              },
              icon: const Icon(Icons.settings),
            ),
          ],
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: FutureBuilder(
          future: authController.getUserInfoAndSetCurrentUser(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Obx(
              () => authController.currentUserInfo.value.when(
                data: (user) => _BuildBody(media: media, authController: authController),
                loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                error: (error) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyText(
                        'Something went wrong',
                        fontSize: 35.sp,
                      ),
                      TextButton(
                        onPressed: () {
                          print('object');
                          authController.getUserInfoAndSetCurrentUser();
                        },
                        child: MyText(
                          'Try Again',
                          color: Colors.green,
                          fontSize: 30.sp,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({
    Key? key,
    required this.media,
    required this.authController,
  }) : super(key: key);

  final Size media;
  final AuthController authController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/rsz_registration.png'), fit: BoxFit.fill),
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(height: media.height * 0.1, width: 0),
            Obx(
              () => authController.currentUserInfo.value.when(
                data: (user) => _UserImageWidget(
                  authController: authController,
                  localUser: user,
                ),
                loading: () => const CircularProgressIndicator(),
                error: (err) => Column(
                  children: [
                    const Text('Something went wrong'),
                    TextButton(onPressed: authController.getUserInfoAndSetCurrentUser, child: const Text('Try Again'))
                  ],
                ),
              ),
            ),
            Obx(
              () => authController.currentUserInfo.value.when(
                data: (user) => Flexible(
                  child: UserNameWidget(localUser: user, context: context),
                ),
                loading: () => const CircularProgressIndicator.adaptive(),
                error: (error) => Text(error.toString()),
              ),
            ),
            Obx(
              () => authController.currentUserInfo.value.when(
                data: (user) => Flexible(
                  child: UserEmailWidget(localUser: user, context: context),
                ),
                loading: () => const CircularProgressIndicator.adaptive(),
                error: (error) => Text(error.toString()),
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
              },
              child: _GiftRecieverMenu(height: media.height * 0.1, width: media.width * 0.7),
            ),
            _CommunityHeroMenu(
              height: media.height * 0.1,
              width: media.width * 0.7,
            ),
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
    );
  }
}

class _UserImageWidget extends StatelessWidget {
  const _UserImageWidget({Key? key, required this.authController, required this.localUser}) : super(key: key);

  final AuthController authController;
  final LocalUser localUser;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 6,
      fit: FlexFit.tight,
      child: Padding(
        key: ValueKey(localUser.id),
        padding: const EdgeInsets.only(top: 35),
        child: localUser.imageUrl != null
            ? CircleAvatar(
                radius: 75,
                backgroundImage: NetworkImage(
                  localUser.imageUrl ?? '',
                ),
              )
            : const SizedBox(),
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
