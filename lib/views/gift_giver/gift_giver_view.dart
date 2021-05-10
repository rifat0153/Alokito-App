import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/widgets/gift_giver/notification_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class GiftGiverView extends StatelessWidget {
  static const route = '/giftgivermainmenu';
  final media = Get.size;
  final double menuHeight = Get.size.height * 0.15;
  final double menuWidth = Get.size.width * 0.6;
  final bannerHeight = Get.size.height * 0.12;
  final bannerWidth = Get.size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.size.height,
          width: Get.size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/rsz_background.png'),
                fit: BoxFit.fill),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: media.height * 0.045, width: 0),
              Row(
                children: <Widget>[
                  SizedBox(width: media.width * 0.03),
                  Icon(Icons.menu, color: Colors.white),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Gift Giver',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  NotificationIconWidget(),
                  SizedBox(width: 10),
                  Icon(Icons.settings, color: Colors.white),
                  SizedBox(width: media.width * 0.03),
                ],
              ),
              SizedBox(height: media.height * 0.05),
              _BannerWidget(size: media),
              _MyButtonRowWidget(),
              _AnyRetailItemMenu(
                height: menuHeight,
                width: menuWidth,
              ),
              _Package3DaysMenu(
                height: menuHeight,
                width: menuWidth,
              ),
              _Package7DaysMenu(
                height: menuHeight,
                width: menuWidth,
              ),
              _PackageCustomMenu(
                height: menuHeight,
                width: menuWidth,
              ),
              Spacer(),
              _ThankYouBannerWidget(
                height: bannerHeight,
                width: bannerWidth,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ThankYouBannerWidget extends StatelessWidget {
  final double height;
  final double width;

  _ThankYouBannerWidget({required this.height, required this.width});

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
          Text(
            'Thank You',
            style: TextStyle(fontSize: 20, color: Colors.cyan),
          ),
          SizedBox(height: 8),
          Text(
            'for supporting lives',
            style: TextStyle(fontSize: 10),
          ),
          Text(
            'Your time and services are precious but...',
            style: TextStyle(fontSize: 10),
          ),
          Text(
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
  final double height;
  final double width;

  _AnyRetailItemMenu({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Image.asset(
        'assets/images/any-retail-item_min.png',
        fit: BoxFit.fill,
      ),
    );
  }
}

class _Package3DaysMenu extends StatelessWidget {
  final double height;
  final double width;

  _Package3DaysMenu({required this.height, required this.width});

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
  final double height;
  final double width;

  _Package7DaysMenu({required this.height, required this.width});

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
  final double height;
  final double width;

  _PackageCustomMenu({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          child: Text('My Gift'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith(
                (states) => GIFT_GIVER_BUTTON_COLOR),
            foregroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.black),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Gift Request'),
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.grey),
            foregroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.black),
          ),
        ),
      ],
    );
  }
}

class _BannerWidget extends StatelessWidget {
  final Size size;

  _BannerWidget({required this.size});

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
            FlutterIcons.alert_triangle_fea,
            color: Colors.yellow,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              'Covid - 19 Sharing & Safety Guidelines',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
