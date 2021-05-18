import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomGiftOptionWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var daysController = useTextEditingController();

    return Row(
      children: [
        const SizedBox(width: 30),
        Container(
          height: 9,
          width: 9,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          height: 25,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: GIFT_ADD_FORM_COLOR,
              borderRadius: BorderRadius.circular(5)),
          child: TextField(
            controller: daysController,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              // contentPadding: EdgeInsets.symmetric(horizontal: 1),
            ),
            onChanged: (value) {
              daysController.text = value;
              print(daysController.text);
            },
          ),
        )
      ],
    );
  }
}
