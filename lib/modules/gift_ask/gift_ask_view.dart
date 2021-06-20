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
import 'package:line_icons/line_icon.dart';
import 'package:location/location.dart';

class GiftAskView extends StatelessWidget {
  GiftAskView({Key? key}) : super(key: key);

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
            onPressed: () => Get.back(),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: context.height * 0.14),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Don't worry...",
                          style: boldFontStyle.copyWith(fontSize: 24),
                        ),
                        const SizedBox(height: 8),
                        Text('there are many people', style: boldFontStyle),
                        const SizedBox(height: 8),
                        Text('around you ready to help', style: boldFontStyle),
                        const SizedBox(height: 8),
                        _InsertLocationWidget(),
                        const SizedBox(height: 8),
                        _RequestForAndImageRow(),
                        _FormWidget(key: ValueKey('formWidget')),
                        const SizedBox(height: 16),
                        MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          color: GIFT_ADD_FORM_SUBMIT,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Text(
                              'Place a Request',
                              style: boldFontStyle.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        _GuideLines(),
                        const SizedBox(height: 300),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  height: Get.height * 0.08,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _FormWidget extends StatelessWidget {
  _FormWidget({Key? key}) : super(key: key);

  final GiftAskController giftAskController = Get.find<GiftAskController>();

  FocusNode focusNode = FocusNode();

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
            onTap: () {
              giftAskController.togglePackageSmallFamilty();
            },
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
            onTap: () {
              giftAskController.togglePackageSmallFamilty();
            },
            child: Row(
              children: [
                Obx(
                  () => Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: !giftAskController.packageSmallFamilty ? Colors.teal : Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(width: 16),
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
    var pickedFile = await _picker.getImage(source: ImageSource.gallery, imageQuality: 50, maxWidth: 400);

    File imageFile = File(pickedFile != null ? pickedFile.path : "");

    if (imageFile.path != "") {
      giftAskController.precriptionImageFile.value = imageFile;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 120,
      child: Row(
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
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Obx(
                    () => ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        giftAskController.showPrescription.value ? Colors.white : Colors.grey,
                        BlendMode.modulate,
                      ),
                      child: giftAskController.precriptionImageFile.value.path.length > 0
                          ? Image.file(giftAskController.precriptionImageFile.value)
                          : Image.asset(
                              'assets/images/add_prescription.png',
                              fit: BoxFit.fill,
                            ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Container(
                decoration: BoxDecoration(
                    color: giftAskController.showPrescription.value ? Colors.black : Colors.grey,
                    borderRadius: BorderRadius.circular(5)),
                child: Obx(
                  () => ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      giftAskController.showPrescription.value ? Colors.white : Colors.grey,
                      BlendMode.modulate,
                    ),
                    child: GestureDetector(
                      onTap: !giftAskController.showPrescription.value ? null : _getLocalImage,
                      child: Text(' Add Prescription ',
                          style: whiteFontStyle.copyWith(
                              fontSize: 10,
                              color: giftAskController.showPrescription.value ? Colors.white : Colors.black)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
            ],
          )
        ],
      ),
    );
  }
}

class _InsertLocationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 30,
        width: double.infinity,
        decoration: BoxDecoration(
          color: GIFT_ADD_FORM_COLOR,
          borderRadius: BorderRadius.circular(5),
        ),
        child: GestureDetector(
          onTap: () => Get.to(_MapWidget()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'insert your location',
                  overflow: TextOverflow.ellipsis,
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
  _MapWidget({Key? key}) : super(key: key);

  @override
  __MapWidgetState createState() => __MapWidgetState();
}

class __MapWidgetState extends State<_MapWidget> {
  final GiftAskController giftAskController = Get.find();
  Completer<GoogleMapController> _controller = Completer();

  late LatLng userPosition = LatLng(0, 0);

  @override
  void initState() {
    super.initState();
    getLocationtionData();
  }

  void getLocationtionData() async {
    var locData = await Location().getLocation();
    userPosition = LatLng(locData.latitude ?? 0, locData.longitude ?? 0);
    CameraPosition userCameraPosition = CameraPosition(target: userPosition);
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(userCameraPosition));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          foregroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: GoogleMap(
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          initialCameraPosition: CameraPosition(
            target: giftAskController.currentUserPosition.value,
          ),
          markers: Set.from([
            Marker(
              markerId: MarkerId('123'),
              position: userPosition,
            )
          ]),
        ),
      ),
    );
  }
}

class _RequestDateWidget extends StatelessWidget {
  _RequestDateWidget();

  final GiftAskController giftAskController = Get.find<GiftAskController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
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
                  child: Text('11/22/2020'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              width: double.infinity,
              child: Row(
                children: [
                  Text('Request For', style: boldFontStyle),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () => giftAskController.decreseRequestForNoOfPeople(),
                    child: _StyledContainer(
                      widget: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text('-', style: boldFontStyle.copyWith(fontSize: 20)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  _StyledContainer(
                    widget: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                      child: Obx(
                        () => Text(
                          giftAskController.requestForNoOfPeople.toString(),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () => giftAskController.increaseRequestForNoOfPeople(),
                    child: _StyledContainer(
                      widget: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text('+', style: boldFontStyle.copyWith(fontSize: 20)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
            child: Row(
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(30)),
                ),
                const SizedBox(width: 8),
                Text(
                  'Any Retail Item',
                  style: boldFontStyle,
                ),
                const SizedBox(width: 8),
                _StyledContainer(
                  widget: _GiftTypeDropdownButton(),
                )
              ],
            ),
          )
        ],
      ),
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
        iconSize: 20,
        elevation: 16,
        style: const TextStyle(
          color: Colors.black,
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
        borderRadius: BorderRadius.circular(5),
      ),
      child: widget,
    );
  }
}

class _GuideLines extends StatelessWidget {
  const _GuideLines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: Get.width,
      child: Row(
        children: [
          SizedBox(width: 16),
          Icon(FontAwesomeIcons.bullhorn),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '* Please see the ',
                          style: whiteFontStyle.copyWith(fontSize: notificationFontSize, color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Guideline for Food Adding',
                          style: boldFontStyle.copyWith(color: Colors.red, fontSize: notificationFontSize),
                        ),
                      ],
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '* Request to follow ',
                          style: whiteFontStyle.copyWith(fontSize: notificationFontSize, color: Colors.black),
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
      ),
    );
  }
}
