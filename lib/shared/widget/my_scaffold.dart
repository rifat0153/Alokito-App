import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({
    Key? key,
    required this.assetPath,
    required this.appBarTitle,
    required this.child,
    this.centerTitle = true,
    this.leading = const Icon(Icons.chevron_left, color: Colors.black),
  }) : super(key: key);

  final String assetPath;
  final Widget child;
  final String appBarTitle;
  final Icon leading;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetPath),
          fit: BoxFit.fill,
        ),
      ),
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(onPressed: Get.back, icon: leading),
          title: MyText(appBarTitle),
          centerTitle: centerTitle,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: child,
      )),
    );
  }
}
