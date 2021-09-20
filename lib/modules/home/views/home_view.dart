import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../models/user/local_user.dart';
import '../../../shared/my_drawer_widget.dart';
import '../../../shared/widget/my_text.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../settings/views/settings_view.dart';
import '../widgets/menu_tile_widget.dart';
import '../widgets/user_email_widget.dart';
import '../widgets/user_name_widget.dart';
import '../widgets/user_navbar.dart';

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
          toolbarHeight: 100.h,
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
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Stack(
        children: [
          // Top Curved Bar
          SvgPicture.asset(
            'assets/svgs/top bar.svg',
            height: 0.145.sh,
            width: 1.sw,
            fit: BoxFit.fill,
          ),

          // Footer
          Positioned(
            bottom: 0,
            child: SvgPicture.asset(
              'assets/svgs/footer bar.svg',
              width: 1.sw,
            ),
          ),

          SvgPicture.asset(
            'assets/svgs/Group 4302.svg',
            width: Get.width,
            height: 1.sh,
          ),

          // Middle Layer
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _UserImageWidget(
                authController: authController,
                localUser: user,
              ),
              UserNameWidget(localUser: user, context: context),
              UserEmailWidget(localUser: user, context: context),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Row(
                  children: [
                    SizedBox(width: 70.w),
                    Text(
                      'and you are a...',
                      style: TextStyle(fontSize: 17.sp),
                    ),
                  ],
                ),
              ),

              // Menu Lists
              ...menuListTile
            ],
          ),

          // Last Layer
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

class _UserImageWidget extends StatelessWidget {
  const _UserImageWidget({Key? key, required this.authController, required this.localUser}) : super(key: key);

  final AuthController authController;
  final LocalUser localUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: ValueKey(localUser.id),
      padding: EdgeInsets.only(top: 125.h),
      child: CircleAvatar(
        radius: 65,
        backgroundImage: NetworkImage(
          localUser.imageUrl,
        ),
      ),
    );
  }
}
