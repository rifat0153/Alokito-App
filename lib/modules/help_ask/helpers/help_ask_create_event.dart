import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'help_ask_create_event.freezed.dart';

@freezed
class HelpAskCreateEvent with _$HelpAskCreateEvent {
  const factory HelpAskCreateEvent.setDetails(String objective) = _HelpAskCreateEvent_setDetails;
  const factory HelpAskCreateEvent.setLocation(LatLng latLng) = _HelpAskCreateEvent_setLocation;
  const factory HelpAskCreateEvent.create() = _HelpAskCreateEvent_create;
}
