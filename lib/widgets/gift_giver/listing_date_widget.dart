import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ListingDateWidget extends StatelessWidget {
  var date = DateFormat.yMd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    print('date: $date');

    return Column(
      children: [
        const SizedBox(height: 8),
        Row(
          children: [
            const SizedBox(width: 30),
            const Text('Listing Date'),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const SizedBox(width: 30),
            const Icon(Icons.calendar_today),
            const SizedBox(width: 8),
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                color: GIFT_ADD_FORM_COLOR,
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.center,
              child: Text(date),
            ),
            const Spacer(),
            const Text('* List for 5 days. '),
            TextButton(
              onPressed: _listingForBottomSheet,
              child: const Text('Change'),
            ),
            const Spacer(),
          ],
        )
      ],
    );
  }

  void _listingForBottomSheet() {
    Get.bottomSheet(Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      ),
      child: Column(
        children: [
          const Text('Listing For'),
          Slider(
            min: 3,
            max: 10,
            value: 5,
            onChanged: (value) {},
          ),
        ],
      ),
    ));
  }
}
