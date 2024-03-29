import 'package:alokito_new/modules/gift_ask_giver/views/gift_ask_giver_view.dart';

import '../controllers/gift_add_form_controller.dart';
import 'gift_add_view.dart';
import '../../../models/my_enums.dart';
import '../../gift_request/widgets/notification_icon_widget.dart';
import '../../../shared/config.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class GiftView extends StatelessWidget {
  static const route = '/giftgivermainmenu';
  final media = Get.size;
  final double menuHeight = Get.size.height * 0.18;
  final double menuWidth = Get.size.width * 0.6;
  final bannerHeight = Get.size.height * 0.12;
  final bannerWidth = Get.size.width;

  final GiftAddFormController giftAddFormController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,

        // drawer: MyDrawer(),
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 80,
          centerTitle: true,
          title: const Text(
            'Gift Receiver',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          actions: [
            Row(
              children: [
                Badge(
                  badgeContent: const Text('!'),
                  child: const Icon(Icons.notifications),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
          ],
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: _buildBody(
            media: media, giftAddFormController: giftAddFormController, menuHeight: menuHeight, menuWidth: menuWidth),
      ),
    );
  }
}

class _buildBody extends StatelessWidget {
  const _buildBody({
    Key? key,
    required this.media,
    required this.giftAddFormController,
    required this.menuHeight,
    required this.menuWidth,
  }) : super(key: key);

  final Size media;
  final GiftAddFormController giftAddFormController;
  final double menuHeight;
  final double menuWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.size.height,
          width: Get.size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/rsz_background.png'), fit: BoxFit.fill),
          ),
        ),
        Positioned(
          top: media.height * 0.14,
          left: 0,
          child: Container(
            // height: media.height,
            width: media.width,
            child: _BannerWidget(size: media),
          ),
        ),
        Positioned(
          top: media.height * 0.18,
          child: SizedBox(width: media.width, child: const _MyButtonRowWidget()),
        ),
        Positioned(
          top: media.height * 0.24,
          left: 0,
          child: SizedBox(
            height: media.height * 0.6,
            width: media.width,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: media.width * 0.1),
                  child: GestureDetector(
                    onTap: () {
                      giftAddFormController.giftType.value = GiftType.anyRetailItem;
                      Get.toNamed(GiftAddView.route);
                    },
                    child: _AnyRetailItemMenu(height: menuHeight, width: menuWidth),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: media.width * 0.1),
                  child: GestureDetector(
                    onTap: () {
                      giftAddFormController.giftType.value = GiftType.packageFor3Days;
                      Get.toNamed(GiftAddView.route);
                    },
                    child: _Package3DaysMenu(height: menuHeight, width: menuWidth),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: media.width * 0.1),
                  child: GestureDetector(
                    onTap: () {
                      giftAddFormController.giftType.value = GiftType.packageFor7Days;
                      Get.toNamed(GiftAddView.route);
                    },
                    child: _Package7DaysMenu(height: menuHeight, width: menuWidth),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: media.width * 0.1),
                  child: GestureDetector(
                    onTap: () {
                      giftAddFormController.giftType.value = GiftType.customizedPackage;
                      Get.toNamed(GiftAddView.route);
                    },
                    child: _PackageCustomMenu(height: menuHeight, width: menuWidth),
                  ),
                ),
                const SizedBox(height: 40)
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: _ThankYouBannerWidget(height: 30, width: media.width),
        )
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
    required this.media,
  }) : super(key: key);

  final Size media;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: media.width * 0.03),
        const Icon(Icons.menu, color: Colors.white),
        const SizedBox(width: 10),
        const Expanded(
          child: Text(
            'Gift Giver',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        NotificationIconWidget(),
        const SizedBox(width: 10),
        const Icon(Icons.settings, color: Colors.white),
        SizedBox(width: media.width * 0.03),
      ],
    );
  }
}

class _ThankYouBannerWidget extends StatelessWidget {
  _ThankYouBannerWidget({required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: height,
      width: width,
      decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5,
        ),
      ]),
      child: Column(
        children: [
          const Text(
            'Thank You',
            style: TextStyle(fontSize: 20, color: Colors.cyan),
          ),
          const SizedBox(height: 8),
          const Text(
            'for supporting lives',
            style: TextStyle(fontSize: 10),
          ),
          const Text(
            'Your time and services are precious but...',
            style: TextStyle(fontSize: 10),
          ),
          const Text(
            'But it can also put a smile on the face of many people which will give you a feeling of heaven',
            textAlign: TextAlign.center,
            maxLines: 5,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class _AnyRetailItemMenu extends StatelessWidget {
  _AnyRetailItemMenu({required this.height, required this.width});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Image.asset(
        'assets/images/any-retail-item_md.png',
        fit: BoxFit.fill,
      ),
    );
  }
}

class _Package3DaysMenu extends StatelessWidget {
  _Package3DaysMenu({required this.height, required this.width});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Image.asset(
        'assets/images/rsz_package-for-3days.png',
        fit: BoxFit.fill,
      ),
    );
  }
}

class _Package7DaysMenu extends StatelessWidget {
  _Package7DaysMenu({required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Image.asset(
        'assets/images/package-for-7days.png',
        fit: BoxFit.fill,
      ),
    );
  }
}

class _PackageCustomMenu extends StatelessWidget {
  const _PackageCustomMenu({required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(
        'assets/images/package-you-decide.png',
        fit: BoxFit.fill,
      ),
    );
  }
}

class _MyButtonRowWidget extends StatelessWidget {
  const _MyButtonRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) => giftGiverButtonColor),
            foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.black),
          ),
          child: const Text('My Gift'),
        ),
        ElevatedButton(
          onPressed: () {
            Get.toNamed(GiftAskGiverView.route);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey),
            foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.black),
          ),
          child: const Text('Gift Request'),
        ),
      ],
    );
  }
}

class _BannerWidget extends StatelessWidget {
  _BannerWidget({required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: size.width,
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.dangerous,
            color: Colors.yellow,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              'Covid - 19 Sharing & Safety Guidelines',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
