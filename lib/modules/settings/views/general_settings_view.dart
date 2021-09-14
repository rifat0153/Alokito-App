import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class GeneralSettingsView extends StatelessWidget {
  const GeneralSettingsView({Key? key}) : super(key: key);
  static const route = 'GeneralSettingsView';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var rowPadding = 20.h;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          ),
          title: MyText(
            'General Settings',
            fontSize: 25.sp,
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            SizedBox(
              width: size.width,
              height: size.height,
              child: Image.asset(
                'assets/images/settings_bg.png',
                fit: BoxFit.cover,
              ),
            ),
            _buildSettingsBody(size, rowPadding)
          ],
        ),
      ),
    );
  }

  SizedBox _buildSettingsBody(Size size, double rowPadding) {
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100.h,
            ),
            Obx(
              () => buildSettingsItem(
                  title: 'Name',
                  value: Get.find<AuthController>()
                      .currentUserInfo
                      .value
                      .maybeWhen(data: (user) => user.userName, orElse: () => ''),
                  navFunction: () {}),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: rowPadding),
              child: const Divider(
                height: 1,
                color: settingsBorderColor,
              ),
            ),
            Obx(
              () => buildSettingsItem(
                  title: 'Address',
                  value: Get.find<AuthController>()
                      .currentUserInfo
                      .value
                      .maybeWhen(data: (user) => '1', orElse: () => ''),
                  navFunction: () {}),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: rowPadding),
              child: const Divider(
                height: 1,
                color: settingsBorderColor,
              ),
            ),
            Obx(
              () => buildSettingsItem(
                  title: 'Email', value: Get.find<AuthController>().currentUser.value.email, navFunction: () {}),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: rowPadding),
              child: const Divider(
                height: 1,
                color: settingsBorderColor,
              ),
            ),
            buildSettingsItem(title: 'Password', value: 'Changed 12 hours ago', navFunction: () {}),
            Padding(
              padding: EdgeInsets.symmetric(vertical: rowPadding),
              child: const Divider(
                height: 1,
                color: settingsBorderColor,
              ),
            ),
            Obx(
              () => buildSettingsItem(
                  title: 'Phone',
                  value: Get.find<AuthController>().authStream.value!.emailVerified ? 'Verified' : 'Not Verified',
                  navFunction: () {}),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSettingsItem({
    required String title,
    required String value,
    required void Function() navFunction,
    double size = 25,
    double titleFontSize = 25,
  }) {
    return GestureDetector(
      onTap: navFunction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(title),
          SizedBox(
            width: 30.h,
          ),
          MyText(
            value,
            fontSize: 24.sp,
          )
        ],
      ),
    );
  }
}
