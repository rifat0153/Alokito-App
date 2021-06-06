import 'package:alokito_new/models/gift_giver/my_position.dart';
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
    required String giftId,
    @JsonKey(toJson: giftRequestStatusToJson, fromJson: giftRequestStatusFromJson)
    required GiftRequestStatus giftRequestStatus,
    required String giftImageUrl,
    required String requesterImageUrl,
    required String requesterName,
    required String requesterUid,
    required String requesterMessage,
    required double requesterAvgRating,
    required double requesterTotRating,
    required double requesterRatingSum,
    required double giverAvgRating,
    required double giverTotRating,
    required double giverRatingSum,
    required String giverName,
    required String giverImageUrl,
    required String giverUid,
    required String giftLocation,
    required String giftArea,
    required String notificationFor,
    @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
        required MyPosition giftPosition,
    @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
        required MyPosition requesterPosition,
    @JsonKey(fromJson: myPositionFromJson, toJson: myPositionToJson)
        required MyPosition giverPosition,
    required List<String> notificationForList,
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
