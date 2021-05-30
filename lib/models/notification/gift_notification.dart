import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/my_enums.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_notification.freezed.dart';
part 'gift_notification.g.dart';

@freezed
class GiftNotification with _$GiftNotification {
  const factory GiftNotification({
    String? id,
    required String requesterName,
    required String requesterUid,
    required String requesterMessage,
    required String giverName,
    required String giverUid,
    required String giftLocation,
    required String giftArea,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
        required Timestamp giverJoinedAt,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
        required Timestamp requesterJoinedAt,
    @JsonKey(fromJson: giftTypeFromJson, toJson: giftTypeToJson)
        required GiftType giftType,
    @JsonKey(fromJson: giftNotificationTypeFromJson, toJson: giftNotificationTypeToJson)
        required GiftNotificationType notificationType,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
        required Timestamp createdAt,
  }) = _GiftNotification;

  factory GiftNotification.fromJson(Map<String, dynamic> json) =>
      _$GiftNotificationFromJson(json);
}
