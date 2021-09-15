import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/gift/widgets/user_joining_distance_widget.dart';
import 'package:alokito_new/models/gift_giver/gift.dart';
import 'package:alokito_new/modules/gift_requester/widgets/gift_detail_map_widget.dart';
import 'package:alokito_new/modules/gift_requester/widgets/message_popup_widget.dart';
import 'package:alokito_new/modules/gift_requester_details/controllers/gift_requester_detail_controller.dart';
import 'package:alokito_new/modules/gift_requester_details/services/gift_requester_detail_service.dart';
import 'package:alokito_new/modules/gift_requester_details/widgets/request_delete_widget.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GiftRequesterDetailsView extends StatelessWidget {
  GiftRequesterDetailsView({required this.giftGiver});

  static const route = 'giftdetailview';

  final Gift giftGiver;
  final AuthController authController = Get.find<AuthController>();
  
  //* Initializing Controller
  final GiftRequesterDetailController giftRecieverDetailController = Get.put(
    GiftRequesterDetailController(
      GiftRequesterDetailService(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    var giftType = 'test';

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
        body: _BuildBody(
          giftGiver: giftGiver,
          authController: authController,
          giftRecieverDetailController: giftRecieverDetailController,
        ),
      ),
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({Key? key, required this.giftGiver, required this.authController, required this.giftRecieverDetailController})
      : super(key: key);

  final Gift giftGiver;
  final AuthController authController;
  final GiftRequesterDetailController giftRecieverDetailController;

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
            height: Get.size.height - 170.h,
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
                  GiftDetailMapWidget(gift: giftGiver),
                  // SizedBox(height: 100)
                ],
              ),
            ),
          ),
        ),
        _DecisionWidget(
          authController: authController,
          giftGiver: giftGiver,
          giftRecieverDetailController: giftRecieverDetailController,
        ),
      ],
    );
  }
}

class _DecisionWidget extends StatelessWidget {
  const _DecisionWidget(
      {Key? key, required this.authController, required this.giftGiver, required this.giftRecieverDetailController})
      : super(key: key);

  final AuthController authController;
  final Gift giftGiver;
  final GiftRequesterDetailController giftRecieverDetailController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => authController.currentUserInfo.value.when(
          data: (user) {
            if (user.hasGiftGiverRequest && user.requestedGiftId == giftGiver.id) {
              return Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      onPressed: null,
                      disabledColor: giftAddFormColor,
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
            if (user.hasGiftGiverRequest && user.requestedGiftId != giftGiver.id) {
              return Align(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  onPressed: () {},
                  color: giftAddFormSubmitColor,
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
                color: giftAddFormSubmitColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.size.width * 0.2),
                  child: const Text(
                    'Send Requests',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          },
          loading: () => const CircularProgressIndicator.adaptive(),
          error: (error) => const Text('something went wrong')),
    );
  }
}

class _Location extends StatelessWidget {
  _Location({required this.giftGiver});

  final Gift giftGiver;

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
  const _Image({required this.giftGiver});

  final Gift giftGiver;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        height: 200,
        width: Get.size.width * 0.9,
        child: Hero(
          tag: giftGiver.id!,
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

  final Gift giftGiver;

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
              color: giftAddFormColor,
            ),
            child: Row(
              children: [
                Text('test'),
                const SizedBox(width: 30),
                Text('12 days'),
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

  final Gift giftGiver;

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
                    color: giftAddFormColor,
                  ),
                  child: Text(giftGiver.giftDetails),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
