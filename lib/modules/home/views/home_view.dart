import '../../../models/user/local_user.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../gift/views/gift_add_view.dart';
import '../../gift/views/gift_view.dart';
import '../../gift_requester/views/gift_requester_view.dart';
import '../widgets/menu_tile_widget.dart';
import '../widgets/user_email_widget.dart';
import '../widgets/user_name_widget.dart';
import '../widgets/user_navbar.dart';
import '../../settings/views/settings_view.dart';
import '../../../shared/my_drawer_widget.dart';
import '../../../shared/widget/my_text.dart';
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
