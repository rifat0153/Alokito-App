import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'team_ui_event.freezed.dart';

@freezed
class TeamUiEvent with _$TeamUiEvent {
  const factory TeamUiEvent.setName(String name) = _TeamUiEvent_setName;
  const factory TeamUiEvent.setLocation(LatLng latlng) = _TeamUiEvent_setLocation;
  const factory TeamUiEvent.setObjective(String objective) = _TeamUiEvent_setObjective;
  const factory TeamUiEvent.setGoal(String goal) = _TeamUiEvent_setGoal;
  const factory TeamUiEvent.setSummary(String summary) = _TeamUiEvent_setSummary;
  const factory TeamUiEvent.setStartDate(DateTime date) = _TeamUiEvent_setStartDate;
  const factory TeamUiEvent.setEndDate(DateTime date) = _TeamUiEvent_setEndDate;
  const factory TeamUiEvent.setPreviousGoalAchieved(bool checked) = _TeamUiEvent_setPreviousGoalAchieved;
  const factory TeamUiEvent.setPreviousGoalSummary(DateTime date) = _TeamUiEvent_setPreviousGoalSummary;
  const factory TeamUiEvent.create() = _TeamUiEvent_create;
}
