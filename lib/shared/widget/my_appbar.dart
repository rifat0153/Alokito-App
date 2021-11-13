import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({
    Key? key,
    required this.title,
    this.centerTitle = true,
    this.leading = const Icon(Icons.chevron_left),
  }) : super(key: key);

  final String title;
  final Icon leading;
  final bool centerTitle;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: Get.back, icon: leading),
      title: MyText(title),
      centerTitle: centerTitle,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
    );
  }
}
