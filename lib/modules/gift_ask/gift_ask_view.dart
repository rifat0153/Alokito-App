import 'dart:async';

import 'dart:io';

import 'package:alokito_new/modules/gift_ask/gift_ask_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class GiftAskView extends StatelessWidget {
  GiftAskView({Key? key}) : super(key: key);

  final GiftAskController giftAskController = Get.find<GiftAskController>()..loading.value = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: Get.back,
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: const Text(
            'Gift Receiver',
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    List<Widget> textWidgets = [
      Text(
        "Don't worry...",
        style: boldFontStyle.copyWith(fontSize: 24.sp),
      ),
      SizedBox(height: 8.h),
      Text('there are many people', style: boldFontStyle),
      SizedBox(height: 8.h),
      Text('around you ready to help', style: boldFontStyle),
      SizedBox(height: 8.h),
    ];

    return Stack(
      children: [
        Container(
          height: Get.size.height,
          width: Get.size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/rsz_1gift_receiver.png'), fit: BoxFit.fill),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 110.h),
            ...textWidgets,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _InsertLocationWidget(),
                    SizedBox(height: 8.h),
                    _RequestForAndImageRow(),
                    _FormWidget(key: const ValueKey('formWidget')),
                    SizedBox(height: 1.h),
                    Obx(
                      () => giftAskController.loading.value
                          ? const CircularProgressIndicator()
                          : MaterialButton(
                              onPressed: () async {
                                await giftAskController.addGift();
                              },
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                              color: GIFT_ADD_FORM_SUBMIT,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 50.w),
                                child: Text(
                                  'Place a Request',
                                  style: boldFontStyle.copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                    ),
                    SizedBox(height: 8.h),
                    const _GuideLines(),
                    // SizedBox(height: 100.h),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60.h)
          ],
        ),
      ],
    );
  }
}

class _FormWidget extends StatelessWidget {
  _FormWidget({Key? key}) : super(key: key);

  final GiftAskController giftAskController = Get.find<GiftAskController>();
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: _StyledContainer(
            widget: Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextField(
                maxLength: 25,
                decoration: const InputDecoration(
                  hintText: 'gift title',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  counterText: '',
                  isCollapsed: true,
                  isDense: true,
                ),
                onChanged: (String value) {
                  giftAskController.giftTitle.value = value;
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: GestureDetector(
            onTap: giftAskController.togglePackageSmallFamilty,
            child: Row(
              children: [
                Obx(
                  () => Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: giftAskController.packageSmallFamilty ? Colors.teal : Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                const SizedBox(width: 16),
                Text('Small Family Package', style: boldFontStyle),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
          child: GestureDetector(
            onTap: giftAskController.togglePackageSmallFamilty,
            child: Row(
              children: [
                Obx(
                  () => Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                        color: !giftAskController.packageSmallFamilty ? Colors.teal : Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(width: 16.w),
                Text('Large Family Package', style: boldFontStyle),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
          child: Text('Note', style: boldFontStyle),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: _StyledContainer(
            widget: Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextField(
                // autofocus: true,
                // focusNode: focusNode,
                maxLength: 150,
                maxLines: 3,
                decoration: const InputDecoration(
                  hintText: 'Feel free to write something...',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  counterText: '',
                  isCollapsed: true,
                  isDense: true,
                ),
                onChanged: (String value) {
                  giftAskController.note.value = value;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _RequestForAndImageRow extends StatelessWidget {
  _RequestForAndImageRow({
    Key? key,
  }) : super(key: key);

  final GiftAskController giftAskController = Get.find<GiftAskController>();

  void _getLocalImage() async {
    ImagePicker _picker = ImagePicker();
    var pickedFile =
        await _picker.getImage(source: ImageSource.gallery, imageQuality: 50, maxWidth: 400);

    File imageFile = File(pickedFile != null ? pickedFile.path : "");

    if (imageFile.path != "") {
      giftAskController.precriptionImageFile.value = imageFile;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              _RequestDateWidget(),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Container(
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.r)),
                ),
                child: Obx(
                  () => ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      giftAskController.showPrescription.value ? Colors.white : Colors.grey,
                      BlendMode.modulate,
                    ),
                    child: giftAskController.precriptionImageFile.value.path.isNotEmpty
                        ? Image.file(
                            giftAskController.precriptionImageFile.value,
                            fit: BoxFit.cover,
                          )
                        : Image.asset(
                            'assets/images/add_prescription.png',
                            fit: BoxFit.fill,
                          ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.sp),
            Obx(
              () => Container(
                decoration: BoxDecoration(
                    color: giftAskController.showPrescription.value ? Colors.black : Colors.grey,
                    borderRadius: BorderRadius.circular(5.r)),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    giftAskController.showPrescription.value ? Colors.white : Colors.grey,
                    BlendMode.modulate,
                  ),
                  child: GestureDetector(
                    onTap: !giftAskController.showPrescription.value ? null : _getLocalImage,
                    child: Text(' Add Prescription ',
                        style: whiteFontStyle.copyWith(
                            fontSize: 10.sp,
                            color: giftAskController.showPrescription.value
                                ? Colors.white
                                : Colors.grey)),
                  ),
                ),
              ),
            ),
            // SizedBox(height: 16.h),
          ],
        )
      ],
    );
  }
}

class _InsertLocationWidget extends StatelessWidget {
  GiftAskController giftAskController = Get.find<GiftAskController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 30,
        width: context.width,
        decoration: BoxDecoration(
          color: GIFT_ADD_FORM_COLOR,
          borderRadius: BorderRadius.circular(5),
        ),
        child: GestureDetector(
          onTap: () => Get.to(_MapWidget()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Obx(
                    () => Text(
                      giftAskController.address.value.isEmpty
                          ? 'insert your location'
                          : giftAskController.address.value,
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                    ),
                  ),
                ),
              ),
              Transform.rotate(
                angle: -0.7,
                child: const Icon(
                  Icons.send,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MapWidget extends StatefulWidget {
  const _MapWidget({Key? key}) : super(key: key);

  @override
  __MapWidgetState createState() => __MapWidgetState();
}

class __MapWidgetState extends State<_MapWidget> {
  final GiftAskController giftAskController = Get.find();
  final Completer<GoogleMapController> _controller = Completer();
  double zoom = 12;

  late LatLng userPosition = LatLng(giftAskController.currentUserPosition.value.latitude,
      giftAskController.currentUserPosition.value.longitude);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    giftAskController.bindLocationData();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          foregroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: Obx(
          () => GoogleMap(
            onMapCreated: _controller.complete,
            zoomControlsEnabled: false,
            initialCameraPosition:
                CameraPosition(target: giftAskController.currentUserPosition.value, zoom: zoom),
            onTap: (LatLng latLng) async {
              giftAskController.formMarker.value =
                  Marker(markerId: const MarkerId('markerId'), position: latLng);
              final GoogleMapController controller = await _controller.future;
              await controller.animateCamera(
                CameraUpdate.newCameraPosition(CameraPosition(target: latLng, zoom: zoom)),
              );
              giftAskController.setLocationFromMapCordinates();
            },
            markers: {giftAskController.formMarker.value},
          ),
        ),
      ),
    );
  }
}

class _RequestDateWidget extends StatelessWidget {
  _RequestDateWidget();

  final GiftAskController giftAskController = Get.find<GiftAskController>();
  var date = DateFormat.yMd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Text('Request Date', style: boldFontStyle),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              const Icon(Icons.calendar_today),
              Container(
                color: GIFT_ADD_FORM_COLOR,
                height: 30,
                width: 100,
                alignment: Alignment.center,
                child: Text(date),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Text('Request For', style: boldFontStyle),
                SizedBox(width: 8.w),
                GestureDetector(
                  onTap: giftAskController.decreseRequestForNoOfPeople,
                  child: _StyledContainer(
                    widget: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text('-', style: boldFontStyle.copyWith(fontSize: 20.sp)),
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                _StyledContainer(
                  widget: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                    child: Obx(
                      () => Text(
                        giftAskController.requestForNoOfPeople.toString(),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                GestureDetector(
                  onTap: giftAskController.increaseRequestForNoOfPeople,
                  child: _StyledContainer(
                    widget: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text('+', style: boldFontStyle.copyWith(fontSize: 20.sp)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 8.h),
          child: Row(
            children: [
              Container(
                height: 10.h,
                width: 10.w,
                decoration:
                    BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(30)),
              ),
              SizedBox(width: 8.w),
              Text(
                'Any Retail Item',
                style: boldFontStyle.copyWith(fontSize: 13.sp),
              ),
              SizedBox(width: 8.w),
              _StyledContainer(
                widget: _GiftTypeDropdownButton(),
              )
            ],
          ),
        )
      ],
    );
  }
}

class _GiftTypeDropdownButton extends StatelessWidget {
  _GiftTypeDropdownButton({Key? key}) : super(key: key);

  final GiftAskController giftAskController = Get.find<GiftAskController>();

  @override
  Widget build(BuildContext context) {
    String dropdownValue = giftAskController.selectedGiftType;

    return Obx(
      () => DropdownButton<String>(
        isDense: true,
        value: giftAskController.selectedGiftType,
        icon: const Icon(Icons.arrow_downward),
        iconSize: 20.sp,
        elevation: 16,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.sp,
        ),
        underline: Container(
          height: 0,
          color: Colors.transparent,
        ),
        onChanged: (String? newValue) {
          giftAskController.setSelectedGiftType(newValue ?? 'Food');
        },
        items: giftAskController.giftTypeOptions.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class _StyledContainer extends StatelessWidget {
  const _StyledContainer({Key? key, required this.widget}) : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: GIFT_ADD_FORM_COLOR,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: widget,
    );
  }
}

class _GuideLines extends StatelessWidget {
  const _GuideLines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 16.w),
        const Icon(FontAwesomeIcons.bullhorn),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '* Please see the ',
                        style: whiteFontStyle.copyWith(
                            fontSize: notificationFontSize, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Guideline for Food Adding',
                        style: boldFontStyle.copyWith(
                            color: Colors.red, fontSize: notificationFontSize),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '* Request to follow ',
                        style: whiteFontStyle.copyWith(
                            fontSize: notificationFontSize, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Covid - 19: Sharing & Safety Guidelines',
                        style: boldFontStyle.copyWith(
                          color: Colors.red,
                          fontSize: notificationFontSize,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
