import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/help_ask/help_ask_controller.dart';
import 'package:alokito_new/modules/help_ask/widgets/help_ask_tile_widget.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/widget/map_with_markers.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:alokito_new/shared/widget/skeleton_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HelpAskListView extends StatelessWidget {
  HelpAskListView({Key? key}) : super(key: key);
  static const route = '/help_ask_list_view';

  final HelpAskController controller = Get.find<HelpAskController>();
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SkeletonWidget(
      titleWidget: const MyText('Help Asks', fontWeight: FontWeight.bold),
      assetPath: MyAssets.backgroundPeople,
      child: Obx(
        () => controller.loading.value
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  MapWithMarkersWidget(
                    markers: controller.markers,
                    initialCameraPosition: CameraPosition(
                      // target: authController.currentUserPosition.value,
                      // TODO: use actual position
                      target: LatLng(23, 90),
                      zoom: 9,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.helpAsks.value.length,
                    itemBuilder: ((_, i) => GestureDetector(
                          onTap: () => controller.createChat(controller.helpAsks.value[i]),
                          child: HelpAskTileWidget(
                            helpAsk: controller.helpAsks.value[i],
                          ),
                        )),
                  )
                ],
              ),
      ),
    );
  }
}
