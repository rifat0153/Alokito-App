import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.onChanged,
    this.icon,
  }) : super(key: key);

  final Function(String string) onChanged;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        fillColor: MyColors.darkGrey.withOpacity(0.6),
        hintText: 'name',
        isDense: true,
        contentPadding: const EdgeInsets.all(8),
        filled: true,
        icon: icon,
      ),
    );
  }
}
