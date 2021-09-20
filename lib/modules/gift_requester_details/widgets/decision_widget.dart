import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/gift_giver/gift.dart';
import '../../../shared/config.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../gift_requester/widgets/message_popup_widget.dart';
import '../controllers/gift_requester_detail_controller.dart';
import 'request_delete_widget.dart';

class DecisionWidget extends StatelessWidget {
  const DecisionWidget(
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
