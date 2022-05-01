import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_ui_action.freezed.dart';

@freezed
class TeamUiAction with _$TeamUiAction {
  const factory TeamUiAction.setName(String name) = _TeamUiAction_setName;
  const factory TeamUiAction.setLocation(String name) = _TeamUiAction_setLocation;
  const factory TeamUiAction.setObjective(String objective) = _TeamUiAction_setObjective;
  const factory TeamUiAction.setGoal(String goal) = _TeamUiAction_setGoal;
  const factory TeamUiAction.setSummary(String summary) = _TeamUiAction_setSummary;
  const factory TeamUiAction.setStartDate(DateTime date) = _TeamUiAction_setStartDate;
  const factory TeamUiAction.setEndDate(DateTime date) = _TeamUiAction_setEndDate;
  const factory TeamUiAction.create() = _TeamUiAction_create;
}
