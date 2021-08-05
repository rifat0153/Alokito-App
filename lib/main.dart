// @dart=2.9
// above line is used to disabel sound null safety
import 'package:alokito_new/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseFirestore.instance.settings = const Settings(persistenceEnabled: false);
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

    return ScreenUtilInit(
      designSize: const Size(392, 781),
      builder: () => GetMaterialApp(
        // darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Playtime',
          textTheme: TextTheme(bodyText2: TextStyle(fontSize: 20.sp)),
          primarySwatch: Colors.teal,
          accentColor: const Color(0xff1b2e59),
        ),
        initialRoute: '/',
        getPages: GetPages().getPages,
      ),
    );
  }
}

// Comment from TEST branch
