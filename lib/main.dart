// @dart=2.9
// above line is used to disabel sound null safety
import 'package:alokito_new/modules/language/language_controller.dart';
import 'package:alokito_new/modules/language/translations.dart';
import 'package:alokito_new/modules/providers/prefs_provider.dart';
import 'package:alokito_new/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseFirestore.instance.settings = const Settings(persistenceEnabled: false);
  runApp(
    AlokitoApp(),
  );
}

class AlokitoApp extends StatelessWidget {
  // This widget is the root of your application.

  final LanguageController languageController = Get.put(LanguageController());

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
        debugShowCheckedModeBanner: false,
        translations: MyTranslations(),
        locale: const Locale('en', 'US'),
        fallbackLocale: const Locale('en', 'US'),
        title: 'Alokito',
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