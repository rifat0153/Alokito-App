// @dart=2.9
// above line is used to disabel sound null safety
import 'package:alokito_new/bindings/auth_binding.dart';
import 'package:alokito_new/controller/map/geo_controller.dart';
import 'package:alokito_new/views/auth/auth_wrapper.dart';
import 'package:alokito_new/views/gift_giver/gift_giver_view.dart';
import 'package:alokito_new/views/map/geo_map_view.dart';
import 'package:alokito_new/views/map/my_map_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'views/auth/role_wrapper.dart';
import 'controller/auth/auth_controller.dart';
import 'views/auth/login_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AssetImage giftGiverImage;

  @override
  void initState() {
    super.initState();
    giftGiverImage = AssetImage('assets/images/background.png');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(giftGiverImage, context);
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AuthControllerBinding(),
      // darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        primarySwatch: Colors.teal,
        accentColor: Colors.pink,
      ),
      initialRoute: '/',
      builder: EasyLoading.init(),

      getPages: GetPages().getPages,
    );
  }
}

class GetPages {
  List<GetPage<dynamic>> getPages = [
    GetPage(
      name: '/',
      page: () => AuthenticationWrapper(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => AuthController());
      }),
    ),
    GetPage(
      name: GiftGiverView.route,
      page: () => GiftGiverView(),
      // transitionDuration: Duration(milliseconds: 500),
      // transition: Transition.cupertino,
      binding: BindingsBuilder(() {
        //
      }),
    ),
    GetPage(
      name: MyMapView.route,
      transitionDuration: Duration(milliseconds: 500),
      transition: Transition.fadeIn,
      page: () => MyMapView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GeoController());
      }),
    ),
    GetPage(
      name: GeoMapView.route,
      page: () => GeoMapView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GeoController());
      }),
    ),
  ];
}
