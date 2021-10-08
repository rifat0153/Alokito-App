import 'package:alokito_new/modules/gift_ask/views/gift_ask_request_view.dart';
import 'package:alokito_new/modules/gift_ask_giver/controller/gift_ask_giver_controller.dart';
import 'package:alokito_new/modules/notification/service/notification_service.dart';
import 'package:get/get.dart';

import 'core/language/language_controller.dart';
import 'core/map/my_map_view.dart';
import 'di/firebase_di.dart';
import 'modules/auth/auth_wrapper.dart';
import 'modules/auth/controllers/auth_controller.dart';
import 'modules/auth/controllers/login_controller.dart';
import 'modules/auth/services/auth_service.dart';
import 'modules/auth/widgets/login_reg_form.dart';
import 'modules/gift/controllers/gift_add_form_controller.dart';
import 'modules/gift/controllers/gift_controller.dart';
import 'modules/gift/services/gift_service.dart';
import 'modules/gift/views/gift_add_view.dart';
import 'modules/gift/views/gift_view.dart';
import 'modules/gift_ask/controllers/gift_ask_controller.dart';
import 'modules/gift_ask/services/gift_ask_service.dart';
import 'modules/gift_ask/views/gift_ask_view.dart';
import 'modules/gift_requester/controllers/gift_requester_controller.dart';
import 'modules/gift_requester/services/gift_requester_service.dart';
import 'modules/gift_requester/views/gif_requester_offer_list_view.dart';
import 'modules/gift_requester/views/gift_requester_view.dart';
import 'modules/notification/notification_controller.dart';
import 'modules/notification/notification_view.dart';
import 'modules/settings/views/general_settings_view.dart';
import 'modules/settings/views/settings_view.dart';

class GetPages {
  List<GetPage> getPages = [
    //* Auth Route
    GetPage(
        name: '/',
        page: () => AuthenticationWrapper(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => AuthController(AuthService(
                Get.find<FirebaseDI>().auth,
                Get.find<FirebaseDI>().firestore,
              )));
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
      binding: BindingsBuilder(() {
        // Get.put(GiftReceiverController());
      }),
    ),
    GetPage(
      name: GiftRequesterOfferListView.route,
      page: () => GiftRequesterOfferListView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GiftRequesterController(GiftRequesterService()));
      }),
    ),
    GetPage(
      name: GiftAskView.route,
      page: () => GiftAskView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut(
          () => GiftAskController(
            GiftAskService(Get.find<FirebaseDI>().firestore, Get.find<FirebaseDI>().storage),
          ),
        );
      }),
    ),
    GetPage(
      name: GiftAskRequestView.route,
      page: () => GiftAskRequestView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut(
          () => GiftAskController(
            GiftAskService(Get.find<FirebaseDI>().firestore, Get.find<FirebaseDI>().storage),
          ),
        );
      }),
    ),

    // * Gift Giver Routes
    GetPage(
      name: GiftAddView.route,
      page: () => GiftAddView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GiftAddFormController(GiftService(Get.find<FirebaseDI>().storage)));
      }),
    ),
    GetPage(
      name: GiftRequesterOfferListView.route,
      page: () => GiftRequesterOfferListView(),
      transition: Transition.native,
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GiftController());
      }),
    ),
    GetPage(
      name: GiftView.route,
      page: () => GiftView(),
      transition: Transition.native,
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GiftController());
        Get.lazyPut(() => GiftAddFormController(GiftService(Get.find<FirebaseDI>().storage)));
      }),
    ),

    //* Map
    GetPage(
      name: MyMapView.route,
      transition: Transition.cupertino,
      page: () => MyMapView(),
      binding: BindingsBuilder(() {}),
    ),

    //*   Notification Routes
    GetPage(
      name: NotificationView.route,
      page: () => NotificationView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => NotificationController(NotificationService()));
        Get.lazyPut(() => GiftAskGiverController());
        Get.lazyPut(() => GiftRequesterController(GiftRequesterService()));
      }),
    ),

    //* Settings Page
    GetPage(
      name: SettingsView.route,
      page: () => const SettingsView(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.lazyPut(() => LanguageController());
      }),
    ),
    GetPage(
      name: GeneralSettingsView.route,
      page: () => const GeneralSettingsView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => LanguageController());
      }),
    ),
  ];
}
