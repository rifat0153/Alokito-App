import 'package:alokito_new/modules/auth/initial_view.dart';
import 'package:alokito_new/modules/auth/login_view.dart';
import 'package:alokito_new/modules/gift_giver/gift_add_form_controller.dart';
import 'package:alokito_new/modules/gift_receiver/gif_receiver_offer_list_view.dart';
import 'package:alokito_new/modules/gift_receiver/gift_receiver_view.dart';
import 'package:alokito_new/modules/map/geo_controller.dart';
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

    ),
    GetPage(
      name: LoginView.route,
      page: () => LoginView(),
      binding: BindingsBuilder(() {}),
    ),
    //Notification Routes
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
      name: GiftReceiverOfferListView.route,
      page: () => GiftReceiverOfferListView(),
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.downToUp,
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GiftController());
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
