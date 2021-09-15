import 'package:alokito_new/core/language/translations.dart';
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

  // await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));

  FirebaseFirestore.instance.settings = const Settings(persistenceEnabled: false);
  runApp(
    AlokitoApp(),
  );
}

class AlokitoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return ScreenUtilInit(
      designSize: const Size(392, 780),
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
          colorScheme: theme.colorScheme.copyWith(secondary: const Color(0xff1b2e59)),
        ),
        initialRoute: '/',
        getPages: GetPages().getPages,
      ),
    );
  }
}
