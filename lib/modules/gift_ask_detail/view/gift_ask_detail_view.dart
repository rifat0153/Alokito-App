import 'package:alokito_new/modules/gift_ask_detail/controller/gift_ask_detail_controller.dart';
import 'package:alokito_new/modules/gift_ask_detail/service/gift_ask_detail_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/date/date_service.dart';
import '../../../models/gift_ask/gift_ask.dart';
import '../../../models/my_enums.dart';
import '../../../shared/config.dart';
import '../../../shared/widget/my_text.dart';
import '../../auth/controllers/auth_controller.dart';
import '../widgets/gift_ask_detail_decision_widget.dart';
import '../widgets/gift_ask_detail_map_widget.dart';
import '../widgets/gift_ask_detail_note_widget.dart';
import '../widgets/gift_ask_detail_requester_detail_location_widget.dart';
import '../widgets/gift_ask_detail_user_name_widget.dart';
import '../widgets/request_for_date_widget.dart';

class GiftAskDetailView extends StatelessWidget {
  GiftAskDetailView({Key? key, required this.giftAsk}) : super(key: key);

  static const route = '/gift_ask_detail_view';

  // initialize controller
  final GiftAskDetailController controller = Get.put(GiftAskDetailController(GiftAskDetailService()));

  final GiftAsk giftAsk;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: Get.back,
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          ),
          backgroundColor: appBarColor,
          foregroundColor: appBarColor,
          elevation: 5,
          title: Text(
            'Gift Request 22 - ${convertGiftAskType(giftAskType: giftAsk.giftAskType)} ',
            style: const TextStyle(color: Colors.black),
          ),
        ),
        body: Stack(
          children: [
            Container(
              width: Get.width,
              height: Get.height,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/gift_add_form.png'), fit: BoxFit.fill),
              ),
            ),
            _buildBody(giftAsk: giftAsk),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _buildBody({
    // List<Marker> markers,
    required GiftAsk giftAsk,
  }) {
    final userJoinedAt = DateService.findTimeDifference(DateTime.now(), giftAsk.user.createdAt);
    final distance = Get.find<AuthController>().calculateDistanceFromGiftOrGiftAsk(giftAsk: giftAsk);

    return SingleChildScrollView(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.sp),
            child: Text(giftAsk.title.toString(), style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
          ),
          GiftAskDetailRequestForAndDateWidget(giftAsk: giftAsk, date: 'date'),
          GiftAskDetailNoteWidget(giftAsk: giftAsk),
          GiftAskDetailUserNameAndLocationWidget(giftAsk: giftAsk, distance: distance),
          GiftAskDetailRequesterLocationAndGiftDetailsWidget(userJoinedAt: userJoinedAt, giftAsk: giftAsk),

          // Decision Widget
          GiftAskDetailDecisionWidget(giftAsk: giftAsk, controller: controller),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: const MyText('Pickup Location', fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 200.h, child: GiftAskDetailMapWidget(giftAsk: giftAsk)),
        ],
      ),
    );
  }
}
