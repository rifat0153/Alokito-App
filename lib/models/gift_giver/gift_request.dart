import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_request.freezed.dart';
part 'gift_request.g.dart';

@freezed
abstract class GiftReqeust with _$GiftReqeust {

  const factory GiftReqeust({
    String? id,
    @JsonKey( fromJson:   notificationTypeFromJson, toJson: notificationTypeToJson )
    required NotificationType notificationType,
    String? giftRequestId,
    String? giftAskId,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) required Timestamp createdAt,
  }) = _GiftReqeust;

  factory GiftReqeust.fromJson(Map<String, dynamic> json) => _$GiftReqeustFromJson(json);
}

