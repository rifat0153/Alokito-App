import 'package:alokito_new/modules/help_ask/help_ask_create_controller.dart';
import 'package:alokito_new/modules/help_ask/helpers/help_ask_create_event.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/constants.dart';
import 'package:alokito_new/shared/widget/input/my_input.dart';
import 'package:alokito_new/shared/widget/map_location_widget.dart';
import 'package:alokito_new/shared/widget/skeleton_widget.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HelpAskCreateView extends StatelessWidget {
  HelpAskCreateView({Key? key}) : super(key: key);

  static const route = '/help_ask_create_view';

  final HelpAskCreateController controller = Get.find<HelpAskCreateController>();

  @override
  Widget build(BuildContext context) {
    return SkeletonWidget(
      titleWidget: const MyText('Create a team', fontWeight: FontWeight.bold),
      assetPath: MyAssets.backgroundPeople,
      child: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              HelpAskProfileImageWidget(),
              const SizedBox(height: 8),
              MyTextFieldLabeled(
                hintText: 'Help ask details',
                label: 'Details',
                onChanged: (text) => controller.handleUiEvent(HelpAskCreateEvent.setDetails(text)),
              ),
              const SizedBox(height: 8),
              _HelpAskLocationWidget(
                controller: controller,
              ),
              const SizedBox(height: 8),
              const SizedBox(height: 8),
              Obx(
                () => controller.loading.value
                    ? const CircularProgressIndicator()
                    : MyButton(
                        text: 'Create',
                        margin: const EdgeInsets.symmetric(horizontal: kSpacing * 8),
                        width: double.infinity,
                        onTap: () {
                          controller.handleUiEvent(const HelpAskCreateEvent.create());
                        },
                      ),
              ),
              const SizedBox(height: kSpacing)
            ],
          ),
        ),
      ),
    );
  }
}

class _HelpAskLocationWidget extends StatelessWidget {
  const _HelpAskLocationWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HelpAskCreateController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing * 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyText('Location'),
          const SizedBox(
            height: kSpacing,
          ),
          GestureDetector(
            onTap: () => Get.to(
              Obx(() => MapLocationWidget(
                    title: 'Help Ask location',
                    markerList: controller.markerList.toSet(),
                    onTap: (LatLng? latlng) async {
                      controller.handleUiEvent(HelpAskCreateEvent.setLocation(latlng!));
                    },
                    initialCameraPosition: const LatLng(23, 90),
                  )),
            ),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: kSpacing, vertical: kSpacing),
              decoration: BoxDecoration(
                color: MyColors.lightGrey,
                borderRadius: BorderRadius.circular(kRadius / 2),
              ),
              child: MyText(
                controller.newHelpAsk.value.location == null || controller.newHelpAsk.value.location!.isEmpty ? 'Country, place' : controller.newHelpAsk.value.location ?? '',
                fontSize: 14,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HelpAskProfileImageWidget extends StatelessWidget {
  HelpAskProfileImageWidget({
    Key? key,
  }) : super(key: key);

  final HelpAskCreateController controller = Get.find<HelpAskCreateController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      decoration: const BoxDecoration(
        color: Color(0xFFBCBEC0),
      ),
      child: Stack(
        children: [
          Align(alignment: Alignment.center, child: SvgPicture.asset(MyAssets.cameraIcon)),
          Obx(
            () => controller.imageFile.value.path.isNotEmpty
                ? SizedBox(
                    width: double.infinity,
                    child: InteractiveViewer(
                      child: Image.file(
                        controller.imageFile.value,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : Container(),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: ElevatedButton(
                onPressed: controller.getHelpAskImage,
                style: ElevatedButton.styleFrom(
                  primary: MyColors.darkBlue,
                  padding: EdgeInsets.symmetric(horizontal: 4.sp),
                  visualDensity: VisualDensity.compact,
                ),
                child: MyText(
                  'Add Help Ask Photo',
                  fontSize: 12.sp,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
