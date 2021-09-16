import 'package:alokito_new/core/language/language_controller.dart';
import 'package:alokito_new/core/map/my_map_view.dart';
import 'package:alokito_new/modules/auth/auth_wrapper.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/auth/controllers/login_controller.dart';
import 'package:alokito_new/modules/auth/views/initial_view.dart';
import 'package:alokito_new/modules/auth/widgets/login_reg_form.dart';
import 'package:alokito_new/modules/gift/controllers/gift_add_form_controller.dart';
import 'package:alokito_new/modules/gift/controllers/gift_controller.dart';
import 'package:alokito_new/modules/gift/services/gift_service.dart';
import 'package:alokito_new/modules/gift/views/gift_add_view.dart';
import 'package:alokito_new/modules/gift/views/gift_view.dart';
import 'package:alokito_new/modules/gift_requester/controllers/gift_requester_controller.dart';
import 'package:alokito_new/modules/gift_requester/services/gift_requester_service.dart';
import 'package:alokito_new/modules/gift_requester/views/gif_requester_offer_list_view.dart';
import 'package:alokito_new/modules/gift_requester/views/gift_requester_view.dart';
import 'package:alokito_new/modules/notification/notification_controller.dart';
import 'package:alokito_new/modules/notification/notification_view.dart';
import 'package:alokito_new/modules/settings/views/general_settings_view.dart';
import 'package:alokito_new/modules/settings/views/settings_view.dart';
import 'package:get/get.dart';

class GetPages {
  List<GetPage> getPages = [
    //* Auth Route
    GetPage(
        name: '/',
        page: () =>  AuthenticationWrapper(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => AuthController());
          Get.lazyPut(() => LoginController());

          Get.lazyPut(() => LanguageController());
        })),
    GetPage(
        name: LoginRegFormView.route,
        page: () => const LoginRegFormView(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => LoginController());
        })),

    //* Gift Receiver Routes
    GetPage(
      name: GiftRequesterView.route,
      page: () => GiftRequesterView(),
      transition: Transition.cupertino,
      binding: BindingsBuilder(() {
        // Get.put(GiftReceiverController());
      }),
    ),
    GetPage(
      name: GiftRequesterOfferListView.route,
      page: () => GiftRequesterOfferListView(),
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.cupertino,
      binding: BindingsBuilder(() {
        Get.put(
          GiftRequesterController(
            GiftRequesterService(),
          ),
        );
      }),
    ),

    // * Gift Giver Routes
    GetPage(
      name: GiftAddView.route,
      page: () => GiftAddView(),
      // transition: Transition.downToUp,
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GiftAddFormController(GiftService()));
      }),
    ),
    GetPage(
      name: GiftRequesterOfferListView.route,
      page: () => GiftRequesterOfferListView(),
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.downToUp,
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GiftController());
      }),
    ),
    GetPage(
      name: GiftView.route,
      page: () => GiftView(),
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.noTransition,
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GiftController());
        Get.lazyPut(() => GiftAddFormController(GiftService()));
      }),
    ),

    //* Map
    GetPage(
      name: MyMapView.route,
      transitionDuration: const Duration(milliseconds: 500),
      transition: Transition.cupertino,
      page: () => MyMapView(),
      binding: BindingsBuilder(() {}),
    ),

    //*   Notification Routes
    GetPage(
      name: NotificationView.route,
      page: () => NotificationView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => NotificationController());
      }),
    ),

    // Settings Page
    GetPage(
      name: SettingsView.route,
      page: () => const SettingsView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => LanguageController());
      }),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: GeneralSettingsView.route,
      page: () => const GeneralSettingsView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => LanguageController());
      }),
      transition: Transition.rightToLeftWithFade,
    ),
  ];
}
