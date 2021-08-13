import 'package:get/get.dart';

import '/modules/auth/views/initial_view.dart';
import '/modules/auth/widgets/login_reg_form.dart';
import 'modules/gift_giver/controllers/gift_add_form_controller.dart';
import 'modules/gift_receiver/views/gif_receiver_offer_list_view.dart';
import 'modules/gift_receiver/views/gift_receiver_view.dart';
import '/modules/map/geo_controller.dart';
import '/modules/notification/notification_controller.dart';
import '/modules/notification/notification_view.dart';
import '/modules/settings/views/settings_view.dart';
import 'modules/gift_giver/views/gift_add_view.dart';
import 'modules/gift_giver/controllers/gift_controller.dart';
import 'modules/gift_giver/views/gift_giver_view.dart';
import 'modules/map/geo_map_view.dart';
import 'modules/map/my_map_view.dart';
import 'modules/settings/views/general_settings_view.dart';

class GetPages {
  List<GetPage> getPages = [
    //* Auth Route
    GetPage(
      name: '/',
      page: () => const InitialView(),
    ),
    GetPage(
      name: LoginRegFormView.route,
      page: () => const LoginRegFormView(),
    ),

    //* Gift Receiver Routes
    GetPage(
      name: GiftReceiverView.route,
      page: () => GiftReceiverView(),
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.cupertino,
      binding: BindingsBuilder(() {
        Get.put(GiftController());
      }),
    ),

    // * Gift Giver Routes
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

    //*    Map
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
    //*   Notification Routes
    GetPage(
      name: NotificationView.route,
      page: () => NotificationView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => NotificationController());
      }),
    ),
    //*   Settings Page
    GetPage(
      name: SettingsView.route,
      page: () => const SettingsView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => NotificationController());
      }),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: GeneralSettingsView.route,
      page: () => const GeneralSettingsView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => NotificationController());
      }),
      transition: Transition.rightToLeftWithFade,
    ),
  ];
}
