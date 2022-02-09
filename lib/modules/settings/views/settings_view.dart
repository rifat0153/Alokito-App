import '../../../core/language/language_controller.dart';
import 'general_settings_view.dart';
import '../../../shared/config.dart';
import '../../../shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);
  static const route = '/SettingsView';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final rowPadding = 24.h;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          // foregroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          ),
          title: MyText(
            'Settings',
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
            _buildSettingsBody(size, rowPadding, context)
          ],
        ),
      ),
    );
  }

  SizedBox _buildSettingsBody(Size size, double rowPadding, BuildContext context) {
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.w),
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            MyText('appName'.tr),
            TextButton(
                onPressed: () async {
                  await Get.find<LanguageController>().changeLocale('en', 'US');
                },
                child: const Text('English')),
            TextButton(
                onPressed: () async {
                  await Get.find<LanguageController>().changeLocale('bn', 'BD');
                },
                child: const Text('Bangla')),
            buildSettingsItem(
                assetFileName: 'gear.svg',
                title: 'General Settings',
                navFunction: () {
                  Navigator.pushNamed(context, GeneralSettingsView.route);
                }),
            Padding(
              padding: EdgeInsets.symmetric(vertical: rowPadding),
              child: const Divider(
                height: 1,
                color: settingsBorderColor,
              ),
            ),
            buildSettingsItem(assetFileName: 'bell.svg', title: 'Notification Settings', navFunction: () {}),
            Padding(
              padding: EdgeInsets.symmetric(vertical: rowPadding),
              child: const Divider(
                height: 1,
                color: settingsBorderColor,
              ),
            ),
            buildSettingsItem(assetFileName: 'lock.svg', title: 'Privacy', navFunction: () {}),
            Padding(
              padding: EdgeInsets.symmetric(vertical: rowPadding),
              child: const Divider(
                height: 1,
                color: settingsBorderColor,
              ),
            ),
            buildSettingsItem(assetFileName: 'danger.svg', title: 'Report', navFunction: () {}),
            Padding(
              padding: EdgeInsets.symmetric(vertical: rowPadding),
              child: const Divider(
                height: 1,
                color: settingsBorderColor,
              ),
            ),
            buildSettingsItem(assetFileName: 'exit.svg', title: 'Sign Out', navFunction: () {}),
          ],
        ),
      ),
    );
  }

  Widget buildSettingsItem({
    required String title,
    required String assetFileName,
    required void Function() navFunction,
    double size = 25,
    double titleFontSize = 25,
  }) {
    return GestureDetector(
      onTap: navFunction,
      child: Row(
        children: [
          SvgPicture.asset(
            '$imageAssetPath$assetFileName',
            height: size.h,
            width: size.h,
          ),
          SizedBox(
            width: 30.w,
          ),
          MyText(
            title,
            fontSize: 24.sp,
          )
        ],
      ),
    );
  }
}
