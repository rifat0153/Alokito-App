import 'package:alokito_new/models/user/local_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'help_ask.freezed.dart';
part 'help_ask.g.dart';

HelpAskResponse helpAskResponseFromJson(String str) => HelpAskResponse.fromJson(json.decode(str));

String helpAskResponseToJson(HelpAskResponse data) => json.encode(data.toJson());

@freezed
abstract class HelpAskResponse with _$HelpAskResponse {
  const factory HelpAskResponse({
    required int page,
    @JsonKey(name: 'results') @Default([]) List<HelpAsk> helpAsks,
  }) = _HelpAskResponse;

  factory HelpAskResponse.fromJson(Map<String, dynamic> json) => _$HelpAskResponseFromJson(json);
}

@freezed
abstract class HelpAsk with _$HelpAsk {
  @JsonSerializable(explicitToJson: true)
  const factory HelpAsk({
    String? id,
    String? creatorId,
    LocalUser? creator,
    String? helpAskDetails,
    Geometry? geometry,
    String? area,
    String? location,
    String? imageUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    double? distance,
  }) = _HelpAsk;

  factory HelpAsk.fromJson(Map<String, dynamic> json) => _$HelpAskFromJson(json);
}
