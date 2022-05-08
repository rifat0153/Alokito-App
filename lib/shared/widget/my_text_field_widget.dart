import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';

class MyTextFieldBase extends StatelessWidget {
  const MyTextFieldBase({
    Key? key,
    required this.onChanged,
    this.fillColor,
    this.icon,
    this.hintText,
    this.maxLines,
    this.suffixIcon,
  }) : super(key: key);

  final Function(String string) onChanged;
  final Color? fillColor;
  final Widget? icon;
  final String? hintText;
  final int? maxLines;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        fillColor: fillColor ?? MyColors.lightGrey,
        hintText: hintText,
        floatingLabelAlignment: FloatingLabelAlignment.center,
        alignLabelWithHint: false,
        isDense: true,
        contentPadding: const EdgeInsets.all(8),
        filled: true,
        suffixIcon: suffixIcon,
        icon: icon,
      ),
    );
  }
}
