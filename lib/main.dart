// @dart=2.9
// above line is used to disabel sound null safety
import 'package:alokito_new/bindings/auth_binding.dart';
import 'package:alokito_new/controller/gift/gift_add_form_controller.dart';
import 'package:alokito_new/controller/gift/gift_controller.dart';
import 'package:alokito_new/controller/gift/gift_notification_controller.dart';
import 'package:alokito_new/controller/gift/gift_request_controller.dart';
import 'package:alokito_new/controller/map/geo_controller.dart';
import 'package:alokito_new/models/notification/gift_notification.dart';
import 'package:alokito_new/views/auth/auth_wrapper.dart';
import 'package:alokito_new/views/gift_giver/gift_add_view.dart';
import 'package:alokito_new/views/gift_giver/gift_giver_view.dart';
import 'package:alokito_new/views/gift_receiver/gift_details_view.dart';
import 'package:alokito_new/views/gift_receiver/gift_offer_view.dart';
import 'package:alokito_new/views/gift_receiver/gift_receiver_view.dart';
import 'package:alokito_new/views/map/geo_map_view.dart';
import 'package:alokito_new/views/map/my_map_view.dart';
import 'package:alokito_new/views/notification/notification_details_view.dart';
import 'package:alokito_new/views/notification/notification_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'controller/auth/auth_controller.dart';
import './views/gift_giver/my_gift_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MyApp(),
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
    giftGiverImage = const AssetImage('assets/images/rsz_background.png');
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
        accentColor: Color(0xff1b2e59),
      ),
      initialRoute: '/',
      builder: EasyLoading.init(),

      getPages: GetPages().getPages,
    );
  }
}

class GetPages {
  List<GetPage> getPages = [
    //Auth Route
    GetPage(
      name: '/',
      page: () => AuthenticationWrapper(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => AuthController());
        Get.put(GiftNotificationController());
      }),
    ),
    //Notification Routes
    GetPage(
      name: NotificationView.route,
      page: () => NotificationView(),
      binding: BindingsBuilder(() {
        Get.put(GiftNotificationController());
        Get.find<GiftNotificationController>().bindNotificationStream();
      }),
    ),
    GetPage(
      name: NotificationDetailsView.route,
      page: () => NotificationDetailsView(),
      binding: BindingsBuilder(() {}),
    ),
    // Gift Receiver Routes
    GetPage(
      name: GiftReceiverView.route,
      page: () => GiftReceiverView(),
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.cupertino,
      binding: BindingsBuilder(() {
        Get.put(GiftController());
      }),
    ),

    //  Gift Giver Routes
    GetPage(
      name: GiftAddView.route,
      page: () => GiftAddView(),
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.downToUp,
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GiftAddFormController());
      }),
    ),
    GetPage(
      name: GiftOfferView.route,
      page: () => GiftOfferView(),
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.downToUp,
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GiftController());
        Get.lazyPut(() => GiftAddFormController());
        Get.put(GiftRequestController());
        Get.put(GiftNotificationController());
      }),
    ),
    GetPage(
      name: GiftGiverView.route,
      page: () => GiftGiverView(),
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.noTransition,
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GiftController());
        Get.lazyPut(() => GiftAddFormController());
      }),
    ),

    //Map
    GetPage(
      name: MyMapView.route,
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.cupertino,
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
