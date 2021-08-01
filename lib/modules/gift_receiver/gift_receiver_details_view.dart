import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:alokito_new/modules/gift_giver/gift_controller.dart';
import 'package:alokito_new/modules/gift_giver/widgets/user_joining_distance_widget.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_controller.dart';
import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:alokito_new/shared/config.dart';
import './widgets/gift_detail_map_widget.dart';
import './widgets/message_popup_widget.dart';
import './widgets/request_delete_widget.dart';

class GiftReceiverDetailsView extends StatelessWidget {
  GiftReceiverDetailsView({required this.giftGiver});

  static const route = 'giftdetail';

  final GiftGiver giftGiver;
  final GiftReceiverController giftRequestController = Get.find();
  final AuthController authController = Get.find<AuthController>();
  final GiftController giftController = Get.find();

  @override
  Widget build(BuildContext context) {
    var giftType = convertGiftType(giftGiver.giftType);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: Get.back,
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: RichText(
            text: TextSpan(
              text: 'Gift Offer - ',
              style: const TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: giftType,
                  style: boldFontStyle.copyWith(fontSize: 20),
                ),
              ],
            ),
          ),
          elevation: 5,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
        ),
        body: _BuildBody(giftGiver: giftGiver, authController: authController),
      ),
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({
    Key? key,
    required this.giftGiver,
    required this.authController,
  }) : super(key: key);

  final GiftGiver giftGiver;
  final AuthController authController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.size.height,
          width: Get.size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/gift_details.png'), fit: BoxFit.fill),
          ),
        ),
        Positioned(
          // top: 10,
          child: SizedBox(
            height: Get.size.height - 170,
            width: Get.size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Image(giftGiver: giftGiver),
                  _PackageName(giftGiver: giftGiver),
                  _GiftDetails(giftGiver: giftGiver),
                  UserDetail(giftGiver: giftGiver),
                  UserRatingAndDistance(giftGiver: giftGiver),
                  _Location(giftGiver: giftGiver),
                  GiftDetailMapWidget(giftGiver: giftGiver),
                  // SizedBox(height: 100)
                ],
              ),
            ),
          ),
        ),
        _DecisionWidget(authController: authController, giftGiver: giftGiver),
      ],
    );
  }
}

class _DecisionWidget extends StatelessWidget {
  const _DecisionWidget({
    Key? key,
    required this.authController,
    required this.giftGiver,
  }) : super(key: key);

  final AuthController authController;
  final GiftGiver giftGiver;

  @override
  Widget build(BuildContext context) {
    return authController.currentUserInfo.value.when(
        data: (user) {
          if (user.hasGiftAskRequest && user.requestedGiftId == giftGiver.id) {
            return Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: null,
                    disabledColor: GIFT_ADD_FORM_COLOR,
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      'Gift Requested',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) {
                          return RequestDeleteWidget(giftGiver: giftGiver);
                        },
                      );
                    },
                    color: Colors.red,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          }
          if (user.hasGiftAskRequest && user.requestedGiftId != giftGiver.id) {
            return Align(
              alignment: Alignment.bottomCenter,
              child: MaterialButton(
                onPressed: () {},
                color: GIFT_ADD_FORM_SUBMIT,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.size.width * 0.1),
                  child: const Text(
                    'Already have a Request',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          }
          return Align(
            alignment: Alignment.bottomCenter,
            child: MaterialButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return MessagePopUpWidget(giftGiver: giftGiver);
                  },
                );
              },
              color: GIFT_ADD_FORM_SUBMIT,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.size.width * 0.2),
                child: const Text(
                  'Send Request',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        },
        loading: () => const CircularProgressIndicator.adaptive(),
        error: (error) => const Text('something went wrong'));
  }
}

class _Location extends StatelessWidget {
  _Location({required this.giftGiver});

  final GiftGiver giftGiver;
  final GiftController giftController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Location', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text('${giftGiver.location}'),
        ],
      ),
    );
  }
}

class _Image extends StatelessWidget {
  _Image({required this.giftGiver});

  final GiftGiver giftGiver;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 200,
        width: Get.size.width * 0.9,
        child: Hero(
          tag: giftGiver.imageUrl,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                giftGiver.imageUrl,
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}

class _PackageName extends StatelessWidget {
  _PackageName({required this.giftGiver});

  final GiftGiver giftGiver;
  final GiftController giftController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Package For',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 8, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              color: GIFT_ADD_FORM_COLOR,
            ),
            child: Row(
              children: [
                Text(convertGiftFor(giftGiver)),
                const SizedBox(width: 30),
                Text('${giftGiver.givingGiftInDays} days'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _GiftDetails extends StatelessWidget {
  _GiftDetails({required this.giftGiver});

  final GiftGiver giftGiver;
  final GiftController giftController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Gift Details',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 8, color: Colors.transparent),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    color: GIFT_ADD_FORM_COLOR,
                  ),
                  child: Text('${giftGiver.giftDetails}'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _GiftGiverInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
