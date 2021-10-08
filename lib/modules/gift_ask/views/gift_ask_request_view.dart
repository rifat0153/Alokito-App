import '../../../models/gift_ask/gift_ask.dart';
import '../../../models/my_enums.dart';
import '../../auth/controllers/auth_controller.dart';
import '../controllers/gift_ask_controller.dart';
import '../../gift_ask_giver/view/gift_ask_detail_view.dart';
import '../../../shared/config.dart';
import '../../../shared/styles.dart';
import '../../../shared/widget/map_with_markers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GiftAskRequestView extends StatelessWidget {
  GiftAskRequestView({Key? key}) : super(key: key);

  static const route = 'giftaskrequestview';

  final GiftAskController giftAskController = Get.find<GiftAskController>();

  @override
  Widget build(BuildContext context) {
    giftAskController.bindGiftRequestStream();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.cancel,
              color: Colors.black,
            ),
            onPressed: Get.back,
          )
        ],
        title: const Text(
          'Gift Request',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey[200],
        shadowColor: Colors.white,
      ),

      body: _BuildBody(giftAskController: giftAskController),
      // body: MyMapView(),
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({
    Key? key,
    required this.giftAskController,
  }) : super(key: key);

  final GiftAskController giftAskController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/gift_add_form.png'), fit: BoxFit.fill),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => MapWithMarkersWidget(
              markers: giftAskController.markers,
              initialCameraPosition: CameraPosition(
                target: LatLng(giftAskController.currentUserPosition.value.latitude,
                    giftAskController.currentUserPosition.value.longitude),
                zoom: 9.0,
              ),
            ),
          ),
          Obx(
            () => Text(
              '${giftAskController.filteredGiftRequestList.value.maybeWhen(data: (data) => data.length, orElse: () => 0)} requests around\nyou right now',
              style: boldFontStyle.copyWith(fontSize: 25),
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              maxLines: 2,
            ),
          ),
          Expanded(
            child: Obx(() => giftAskController.filteredGiftRequestList.value.when(
                data: (giftAskList) => ListView.builder(
                      itemCount: giftAskList.length,
                      itemBuilder: (_, i) => _GiftAskRequestTile(
                        key: ValueKey(giftAskList[i].id),
                        giftAskList: giftAskList,
                        giftAskController: giftAskController,
                        index: i,
                        width: Get.width * 0.8,
                      ),
                      physics: const BouncingScrollPhysics(),
                    ),
                empty: () => const SizedBox(),
                loading: () => const LinearProgressIndicator(),
                error: (error) {
                  return Text(error.toString());
                })),
          ),
          Obx(
            () => Slider(
              value: giftAskController.searchRadius.value,
              label: giftAskController.searchRadius.value.toInt().toString(),
              min: 0,
              max: 200,
              divisions: 200,
              onChanged: (value) => giftAskController.searchRadius.value = value,
            ),
          ),
        ],
      ),
    );
  }
}

class _GiftAskRequestTile extends StatelessWidget {
  _GiftAskRequestTile({
    Key? key,
    required this.giftAskList,
    required this.giftAskController,
    required this.index,
    required this.width,
  }) : super(key: key);

  final List<GiftAsk> giftAskList;
  final int index;
  final double width;
  final GiftAskController giftAskController;
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return authController.currentUserInfo.value.when(
      data: (user) => GestureDetector(
        onTap: () {
          Get.to(() => GiftAskDetailView(giftAsk: giftAskList[index]));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.withOpacity(0.3)),
            ),
            width: 300,
            height: 80,
            child: Row(
              children: [
                Container(
                  width: 100,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: giftAskColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Request For', style: whiteFontStyle.copyWith(fontWeight: FontWeight.bold)),
                      Text(
                        '0${giftAskList[index].requestForNoOfPeople}',
                        style: const TextStyle(
                          color: Color(0xff11CFE7),
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Any Retail Item', style: boldFontStyle.copyWith(fontSize: 16)),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                convertGiftAskType(giftAskType: giftAskList[index].giftAskType),
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(giftAskList[index].area, style: boldFontStyle.copyWith(fontSize: 13)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      loading: () => const CircularProgressIndicator.adaptive(),
      error: (error) => const Text('Something went Wrong'),
    );
  }
}
