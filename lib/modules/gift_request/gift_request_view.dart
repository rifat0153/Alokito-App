import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftRequestView extends StatelessWidget {
  GiftRequestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                )),
          ),
          body: Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  // image: AssetImage(
                  //     'assets/images/gift_receiver_background.png'),
                  image: AssetImage('assets/images/rsz_1gift_receiver.png'),
                  fit: BoxFit.fill),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: context.height * 0.15),
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
              ],
            ),
          )),
    );
  }
}



class _RequestForAndImageRow extends StatelessWidget {
  const _RequestForAndImageRow({
    Key? key,
  }) : super(key: key);

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
                  child: ColorFiltered(
                    colorFilter:
                        ColorFilter.mode(Colors.grey, BlendMode.modulate),
                    child: Image.asset(
                      'assets/images/add_prescription.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(Colors.grey, BlendMode.modulate),
                  child: Text(' Add Prescription ',
                      style: whiteFontStyle.copyWith(fontSize: 10)),
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
    );
  }
}

class _RequestDateWidget extends StatelessWidget {
  const _RequestDateWidget();

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
                  _StyledContainer(
                    widget: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text('-',
                          style: boldFontStyle.copyWith(fontSize: 20)),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const _StyledContainer(
                    widget: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                      child: Text(
                        '02',
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  _StyledContainer(
                    widget: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text('+',
                          style: boldFontStyle.copyWith(fontSize: 20)),
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
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(30)),
                ),
                const SizedBox(width: 8),
                Text(
                  'Any Retail Item',
                  style: boldFontStyle,
                ),
                const SizedBox(width: 8),
                const _StyledContainer(
                  widget: _MyDropdownButton(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _MyDropdownButton extends StatefulWidget {
  const _MyDropdownButton({Key? key}) : super(key: key);

  @override
  State<_MyDropdownButton> createState() => __MyDropdownButtonState();
}

/// This is the private State class that goes with _MyDropdownButton.
class __MyDropdownButtonState extends State<_MyDropdownButton> {
  String dropdownValue = 'Food';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isDense: true,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 20,
      elevation: 16,
      style: const TextStyle(
        color: Colors.deepPurple,
      ),
      underline: Container(
        height: 0,
        color: Colors.transparent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Food', 'Medicine', 'Others']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
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
