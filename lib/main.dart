// @dart=2.9
// above line is used to disabel sound null safety
import 'package:alokito_new/modules/auth/initial_view.dart';
import 'package:alokito_new/modules/auth/login_controller.dart';
import 'package:alokito_new/modules/auth/login_view.dart';
import 'package:alokito_new/modules/gift_giver/gift_add_form_controller.dart';
import 'package:alokito_new/modules/gift_giver/gift_controller.dart';
import 'package:alokito_new/modules/auth/auth_wrapper.dart';
import 'package:alokito_new/modules/gift_giver/gift_add_view.dart';
import 'package:alokito_new/modules/gift_giver/gift_giver_view.dart';
import 'package:alokito_new/modules/home/home_view.dart';
import 'package:alokito_new/modules/map/geo_map_view.dart';
import 'package:alokito_new/modules/map/my_map_view.dart';
import 'package:alokito_new/modules/notifications/gift_notification_controller.dart';
import 'package:alokito_new/modules/gift_receiver/gift_request_controller.dart';
import 'package:alokito_new/modules/map/geo_controller.dart';
import 'package:alokito_new/modules/gift_receiver/gift_offer_view.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_view.dart';

import 'package:alokito_new/modules/notifications/notification_details_view.dart';
import 'package:alokito_new/modules/notifications/notification_view.dart';
import 'package:alokito_new/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    AlokitoApp(),
  );
}

class AlokitoApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AlokitoAppState createState() => _AlokitoAppState();
}

class _AlokitoAppState extends State<AlokitoApp> {
  AssetImage giftGiverImage;

  @override
  void initState() {
    super.initState();
    giftGiverImage = const AssetImage('assets/images/rsz_background.png');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(giftGiverImage, context);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return GetMaterialApp(
      // darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        primarySwatch: Colors.teal,
        accentColor: const Color(0xff1b2e59),
      ),
      initialRoute: '/',
      getPages: GetPages().getPages,
    );
  }
}
