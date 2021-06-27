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
    @JsonKey(toJson: giftNotificationTypeToJson, fromJson: giftNotificationTypeFromJson)
        required GiftNotificationType giftNotificationType,
    required String notification,
  }) = _GiftNotification;

  factory GiftNotification.fromJson(Map<String, dynamic> json) => _$GiftNotificationFromJson(json);
}
