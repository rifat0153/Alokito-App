import 'package:alokito_new/modules/team/team_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/constants.dart';
import 'package:alokito_new/shared/widget/input/my_input.dart';
import 'package:alokito_new/shared/widget/map_location_widget.dart';
import 'package:alokito_new/shared/widget/skeleton_widget.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'team_ui_event.dart';

class CreateTeamView extends StatelessWidget {
  CreateTeamView({Key? key}) : super(key: key);

  static const route = '/create_team_view';

  final TeamController controller = Get.find<TeamController>();

  @override
  Widget build(BuildContext context) {
    return SkeletonWidget(
      titleWidget: const MyText('Create a team', fontWeight: FontWeight.bold),
      assetPath: 'assets/images/notification-background.png',
      child: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              TeamProfileImageWidget(),
              const SizedBox(height: 8),
              MyTextFieldLabeled(
                hintText: '# team name',
                label: 'Name',
                onChanged: (text) => controller.handleUiEvent(TeamUiEvent.setName(text)),
              ),
              const SizedBox(height: 8),
              _TeamLocationWidget(controller: controller),
              const SizedBox(height: 8),
              MyTextFieldLabeled(
                hintText: 'e.g. Helping in flood affected areas',
                label: 'Objective',
                onChanged: (text) => controller.handleUiEvent(TeamUiEvent.setObjective(text)),
              ),
              const SizedBox(height: 8),
              MyTextFieldLabeled(
                hintText: 'e.g. Reach  175 people ...',
                label: 'Goal',
                onChanged: (text) => controller.handleUiEvent(TeamUiEvent.setGoal(text)),
              ),
              const SizedBox(height: 8),
              MyTextFieldLabeled(
                hintText: 'e.g. Reach  175 people ...',
                label: 'Summary',
                maxLines: 10,
                onChanged: (text) => controller.handleUiEvent(TeamUiEvent.setSummary(text)),
              ),
              const SizedBox(height: 8),
              Obx(() => Row(
                    children: [
                      const SizedBox(
                        width: kSpacing * 4,
                      ),
                      MyDatePicker(
                        initialDate: controller.newTeam.value.startDate!,
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(const Duration(days: 365)),
                        textSize: 12,
                        onChange: (date) {
                          controller.handleUiEvent(TeamUiEvent.setStartDate(date));
                        },
                      ),
                      const Spacer(),
                      const MyText('to'),
                      const Spacer(),
                      MyDatePicker(
                        initialDate: controller.newTeam.value.endDate!,
                        firstDate: controller.newTeam.value.startDate!,
                        lastDate: controller.newTeam.value.startDate!.add(const Duration(days: 365)),
                        textSize: 12,
                        onChange: (date) {
                          controller.handleUiEvent(TeamUiEvent.setEndDate(date));
                        },
                      ),
                      const SizedBox(
                        width: kSpacing * 4,
                      ),
                    ],
                  )),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kSpacing * 3),
                child: MyCheckBox(
                  label: 'Previous Goal Achivement',
                  onChange: (val) => controller.handleUiEvent(TeamUiEvent.setPreviousGoalAchieved(val)),
                ),
              ),
              MyTextFieldLabeled(
                hintText: 'e.g. 2000 meals for street children.',
                maxLines: 5,
                label: '',
                onChanged: (text) => controller.handleUiEvent(TeamUiEvent.setPreviousGoalSummary(text)),
              ),
              Obx(
                () => controller.loading.value
                    ? const CircularProgressIndicator()
                    : MyButton(
                        text: 'Create',
                        margin: const EdgeInsets.symmetric(horizontal: kSpacing * 8),
                        width: double.infinity,
                        onTap: () {
                          controller.handleUiEvent(const TeamUiEvent.create());
                        },
                      ),
              ),
              const SizedBox(height: kSpacing)
            ],
          ),
        ),
      ),
    );
  }
}

class _TeamLocationWidget extends StatelessWidget {
  const _TeamLocationWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TeamController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing * 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyText('Location'),
          const SizedBox(
            height: kSpacing,
          ),
          GestureDetector(
            onTap: () => Get.to(
              Obx(() => MapLocationWidget(
                    title: 'Team location',
                    markerList: controller.markerList.toSet(),
                    onTap: (LatLng? latlng) async {
                      controller.handleUiEvent(TeamUiEvent.setLocation(latlng!));
                    },
                    initialCameraPosition: const LatLng(23, 90),
                  )),
            ),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: kSpacing, vertical: kSpacing),
              decoration: BoxDecoration(
                color: MyColors.lightGrey,
                borderRadius: BorderRadius.circular(kRadius / 2),
              ),
              child: MyText(
                controller.newTeam.value.location == null || controller.newTeam.value.location!.isEmpty ? 'Country, place' : controller.newTeam.value.location ?? '',
                fontSize: 14,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TeamProfileImageWidget extends StatelessWidget {
  TeamProfileImageWidget({
    Key? key,
  }) : super(key: key);

  final TeamController controller = Get.find<TeamController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      decoration: const BoxDecoration(
        color: Color(0xFFBCBEC0),
      ),
      child: Stack(
        children: [
          Align(alignment: Alignment.center, child: SvgPicture.asset(MyAssets.cameraIcon)),
          Obx(
            () => controller.coverTeamImage.value.path.isNotEmpty
                ? SizedBox(
                    width: double.infinity,
                    child: InteractiveViewer(
                      child: Image.file(
                        controller.coverTeamImage.value,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : Container(),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: ElevatedButton(
                onPressed: controller.getCoverImage,
                style: ElevatedButton.styleFrom(
                  primary: MyColors.darkBlue,
                  padding: EdgeInsets.symmetric(horizontal: 4.sp),
                  visualDensity: VisualDensity.compact,
                ),
                child: MyText(
                  'Add Event Photo',
                  fontSize: 12.sp,
                  color: Colors.white,
                )),
          ),
          Positioned(
            bottom: 12,
            left: 12,
            child: Center(
              child: GestureDetector(
                onTap: controller.getProfileImage,
                child: Stack(
                  children: [
                    Obx(
                      () => Container(
                        height: 88,
                        width: 88,
                        margin: const EdgeInsets.all(4),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(color: MyColors.darkBlue, width: 3),
                          color: const Color(0Xff707070),
                        ),
                        child: controller.profileTeamImage.value.path.isEmpty
                            ? const MyText(
                                'Profile Image',
                                maxLines: 2,
                                color: Color(0xFFA7A9AC),
                                textAlign: TextAlign.center,
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(28),
                                child: Image.file(
                                  controller.profileTeamImage.value,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                      ),
                    ),
                    Positioned(
                        bottom: 6,
                        right: 2,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: MyColors.darkBlue,
                          ),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 16,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
