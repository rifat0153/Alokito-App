import 'package:alokito_new/modules/auth/initial_view.dart';
import 'package:alokito_new/modules/auth/login_view.dart';
import 'package:alokito_new/modules/gift_giver/gift_add_form_controller.dart';
import 'package:alokito_new/modules/gift_receiver/gift_offer_view.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_view.dart';
import 'package:alokito_new/modules/gift_receiver/gift_request_controller.dart';
import 'package:alokito_new/modules/map/geo_controller.dart';
import 'package:alokito_new/modules/notifications/gift_notification_controller.dart';
import 'package:alokito_new/modules/notifications/notification_details_view.dart';
import 'package:alokito_new/modules/notifications/notification_view.dart';
import 'package:get/get.dart';

import 'modules/gift_giver/gift_add_view.dart';
import 'modules/gift_giver/gift_controller.dart';
import 'modules/gift_giver/gift_giver_view.dart';
import 'modules/map/geo_map_view.dart';
import 'modules/map/my_map_view.dart';

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