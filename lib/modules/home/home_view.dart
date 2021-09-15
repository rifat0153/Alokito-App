import 'package:alokito_new/models/user/local_user.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift/views/gift_add_view.dart';
import 'package:alokito_new/modules/gift/views/gift_view.dart';
import 'package:alokito_new/modules/gift_requester/views/gift_requester_view.dart';
import 'package:alokito_new/modules/home/widgets/menu_tile_widget.dart';
import 'package:alokito_new/modules/home/widgets/user_email_widget.dart';
import 'package:alokito_new/modules/home/widgets/user_name_widget.dart';
import 'package:alokito_new/modules/home/widgets/user_navbar.dart';
import 'package:alokito_new/modules/settings/views/settings_view.dart';
import 'package:alokito_new/shared/my_drawer_widget.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final AuthController authController = Get.find<AuthController>();
  final media = Get.size;

  @override
  Widget build(BuildContext context) {
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
          shadowColor: Colors.transparent,
        ),
        body: Obx(
          () => authController.currentUserInfo.value.when(
            data: (user) => _BuildBody(
              user: user,
              media: media,
              authController: authController,
            ),
            loading: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            error: (error) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    'Something went wrong',
                    fontSize: 35.sp,
                  ),
                  TextButton(
                    onPressed: authController.getUserInfoAndSetCurrentUser,
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
        ),
      ),
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({
    Key? key,
    required this.user,
    required this.media,
    required this.authController,
  }) : super(key: key);

  final LocalUser user;
  final Size media;
  final AuthController authController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Bottom Layer
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/rsz_registration.png'), fit: BoxFit.fill),
          ),
        ),

        // Top Layer
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // User Image
            _UserImageWidget(
              authController: authController,
              localUser: user,
            ),

            // User Name
            UserNameWidget(localUser: user, context: context),

            // User Email
            UserEmailWidget(localUser: user, context: context),

            // Text
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  SizedBox(width: media.width * 0.18),
                  Text(
                    'and you are a...',
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ],
              ),
            ),
            // Gift Giver
            MenuTileWidget(
              assetPath: 'assets/images/gift-giver.png',
              title: 'GiftGiver',
              width: 0.7.sw,
              height: 0.09.sh,
              function: () {
                Get.toNamed(GiftView.route);
              },
            ),
            // Gift Receiver
            MenuTileWidget(
              assetPath: 'assets/images/gift-reciever.png',
              title: 'GiftGiver',
              width: 0.7.sw,
              height: 0.11.sh,
              function: () {
                Get.toNamed(GiftRequesterView.route);
              },
            ),
            MenuTileWidget(
              assetPath: 'assets/images/community-hero.png',
              title: 'GiftGiver',
              width: 0.7.sw,
              height: 0.11.sh,
              function: () {
                Get.toNamed(GiftRequesterView.route);
              },
            ),
            MenuTileWidget(
              assetPath: 'assets/images/team-player.png',
              title: 'GiftGiver',
              width: 0.7.sw,
              height: 0.11.sh,
              function: () {
                Get.toNamed(GiftRequesterView.route);
              },
            ),
          ],
        ),

        // Last Layer
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
    return Padding(
      key: ValueKey(localUser.id),
      padding: EdgeInsets.only(top: 115.h),
      child: CircleAvatar(
        radius: 75,
        backgroundImage: NetworkImage(
          localUser.imageUrl,
        ),
      ),
    );
  }
}
