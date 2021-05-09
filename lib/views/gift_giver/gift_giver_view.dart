import 'package:alokito_new/widgets/gift/notification_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class GiftGiverView extends StatelessWidget {
  static const route = '/giftgiver';

  @override
  Widget build(BuildContext context) {
    final media = Get.size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.size.height,
          width: Get.size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
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
              SizedBox(height: media.height * 0.04),
              _BannerWidget(size: media),
            ],
          ),
        ),
      ),
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
