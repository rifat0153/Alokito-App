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


  // const bool USE_EMULATOR = false;

  // if (USE_EMULATOR) {
  //   // [Firestore | localhost:8080]
  //   FirebaseFirestore.instance.settings = const Settings(
  //     host: 'localhost:8080',
  //     sslEnabled: false,
  //     persistenceEnabled: false,
  //   );

  //   // [Authentication | localhost:9099]
  //   await FirebaseAuth.instance.useEmulator('http://localhost:9099');

  //   // [Storage | localhost:9199]
  //   await FirebaseStorage.instance.useEmulator(
  //     host: 'localhost',
  //     port: 9199,
  //   );
  // }

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
      // builder: EasyLoading.init(),

      getPages: GetPages().getPages,
    );
  }
}

class GetPages {
  List<GetPage> getPages = [
    //Auth Route
    GetPage(
      name: '/',
      page: () => InitialView(),
      // binding: BindingsBuilder(() {
      //   Get.put(AuthController());
      //   Get.put(LoginController());
      //   Get.put(GiftNotificationController());
      // }),
    ),
    GetPage(
      name: LoginView.route,
      page: () => LoginView(),
      binding: BindingsBuilder(() {}),
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
