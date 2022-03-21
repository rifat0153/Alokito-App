import 'package:alokito_new/modules/team/team_controller.dart';
import 'package:alokito_new/modules/team/team_service.dart';
import 'package:alokito_new/modules/team/team_view.dart';
import 'package:get/get.dart';

import 'core/language/language_controller.dart';
import 'di/firebase_di.dart';
import 'modules/auth/auth_wrapper.dart';
import 'modules/auth/controllers/auth_controller.dart';
import 'modules/auth/controllers/login_controller.dart';
import 'modules/auth/services/auth_service.dart';
import 'modules/auth/widgets/login_reg_form.dart';
import 'modules/chat_room/controllers/chat_room_controller.dart';
import 'modules/chat_room/services/chat_room_service.dart';
import 'modules/chat_room/views/chat_room_view.dart';
import 'modules/gift/controllers/gift_add_form_controller.dart';
import 'modules/gift/controllers/gift_controller.dart';
import 'modules/gift/services/gift_service.dart';
import 'modules/gift/views/gift_add_view.dart';
import 'modules/gift/views/gift_view.dart';
import 'modules/gift_ask/controllers/gift_ask_controller.dart';
import 'modules/gift_ask/services/gift_ask_service.dart';
import 'modules/gift_ask/views/gift_ask_view.dart';
import 'modules/gift_ask_giver/controllers/gift_ask_giver_controller.dart';
import 'modules/gift_ask_giver/services/gift_ask_giver_service.dart';
import 'modules/gift_ask_giver/views/gift_ask_giver_view.dart';
import 'modules/gift_ask_request_detail/controllers/gift_ask_request_detail_controller.dart';
import 'modules/gift_ask_request_detail/services/gift_ask_request_detail_service.dart';
import 'modules/gift_ask_request_detail/views/gift_ask_request_detail_view.dart';
import 'modules/gift_request/controllers/gift_request_controller.dart';
import 'modules/gift_request/services/gift_request_service.dart';
import 'modules/gift_request/views/gif_request_list_view.dart';
import 'modules/gift_request/views/gift_request_view.dart';
import 'modules/gift_request_detail/controllers/gift_request_detail_controller.dart';
import 'modules/gift_request_detail/services/gift_request_detail_service.dart';
import 'modules/gift_request_detail/views/gift_request_detail_view.dart';
import 'modules/notification/controllers/notification_controller.dart';
import 'modules/notification/service/notification_service.dart';
import 'modules/notification/views/notification_view.dart';
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

    //* Team Routes
    GetPage(
      name: TeamView.route,
      page: () => const TeamView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut(
          () => TeamController(service: TeamService()),
        );
      }),
    ),

    //* Chat ROutes
    GetPage(
      name: ChatRoomView.route,
      page: () => ChatRoomView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut(
          () => ChatRoomController(
            chatRoomService: ChatRoomService(firestore: FirebaseDI().firestore),
          ),
        );
      }),
    ),

    //* Gift Receiver Routes
    GetPage(
      name: GiftRequestView.route,
      page: () => GiftRequestView(),
      binding: BindingsBuilder(() {
        // Get.put(GiftReceiverController());
      }),
    ),
    GetPage(
      name: GiftRequestListView.route,
      page: () => GiftRequestListView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GiftRequestController(GiftRequestService()));
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
    // GetPage(
    //   name: GiftAskRequestView.route,
    //   page: () => GiftAskRequestView(),
    //   transition: Transition.fadeIn,
    //   binding: BindingsBuilder(() {
    //     Get.lazyPut(
    //       () => GiftAskController(
    //         GiftAskService(Get.find<FirebaseDI>().firestore, Get.find<FirebaseDI>().storage),
    //       ),
    //     );
    //   }),
    // ),

    // Gift Ask View
    GetPage(
      name: GiftAskGiverView.route,
      page: () => GiftAskGiverView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut(
          () => GiftAskGiverController(
            GiftAskGiverService(),
          ),
        );
      }),
    ),
    GetPage(
      name: GiftAskRequestDetailView.route,
      page: () => GiftAskRequestDetailView(),
      transition: Transition.native,
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GiftAskRequestDetailController(GiftAskRequestDetailService()));
        Get.lazyPut(() => ChatRoomController(
            chatRoomService: ChatRoomService(firestore: FirebaseDI().firestore)));
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
      name: GiftRequestListView.route,
      page: () => GiftRequestListView(),
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
    GetPage(
      name: GiftRequestDetailView.route,
      page: () => GiftRequestDetailView(),
      transition: Transition.native,
      binding: BindingsBuilder(() {
        Get.lazyPut(() => GiftRequestDetailController(GiftRequestDetailService()));
        Get.lazyPut(() => ChatRoomController(
            chatRoomService: ChatRoomService(firestore: FirebaseDI().firestore)));
      }),
    ),

    // //* Map
    // GetPage(
    //   name: MyMapView.route,
    //   transition: Transition.cupertino,
    //   page: () => MyMapView(),
    //   binding: BindingsBuilder(() {}),
    // ),

    //*   Notification Routes
    GetPage(
      name: NotificationView.route,
      page: () => NotificationView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => NotificationController(NotificationService()));
        Get.lazyPut(() => GiftRequestController(GiftRequestService()));
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
