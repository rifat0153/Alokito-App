import 'package:alokito_new/controller/gift/gift_add_form_controller.dart';
import 'package:alokito_new/controller/gift/gift_request_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/views/gift_giver/gift_add_view.dart';
import 'package:alokito_new/views/gift_receiver/gift_offer_view.dart';
import 'package:alokito_new/widgets/gift_giver/notification_icon_widget.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

import '../gift_giver/my_gift_view.dart';

class GiftReceiverView extends StatelessWidget {
  static const route = '/giftreceiverview';

  final GiftRequestController controller = Get.put(GiftRequestController());

  final media = Get.size;
  final double menuHeight = Get.size.height * 0.18;
  final double menuWidth = Get.size.width * 0.6;
  final bannerHeight = Get.size.height * 0.12;
  final bannerWidth = Get.size.width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: Get.size.height,
              width: Get.size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    // image: AssetImage(
                    //     'assets/images/gift_receiver_background.png'),
                    image: AssetImage('assets/images/rsz_1gift_receiver.png'),
                    fit: BoxFit.fill),
              ),
            ),
            Positioned(
              top: media.height * 0.02,
              left: 0,
              child: Container(
                // height: media.height,
                width: media.width,
                child: _Header(media: media),
              ),
            ),
            Positioned(
              top: media.height * 0.13,
              child: Container(
                  width: media.width, child: const _MyButtonRowWidget()),
            ),
            Positioned(
              bottom: 0,
              child: _ThankYouBannerWidget(height: 30, width: media.width),
            )
          ],
        ),
      ),
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
            'Gift Receiver',
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
            backgroundColor: MaterialStateProperty.resolveWith(
                (states) => GIFT_GIVER_BUTTON_COLOR),
            foregroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.black),
          ),
          child: const Text('Gift Request'),
        ),
        ElevatedButton(
          onPressed: () {
            Get.toNamed(GiftOfferView.route);
            // Get.to(() => MyGiftView());
          },
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.grey),
            foregroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.black),
          ),
          child: const Text('Gift Offer'),
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
