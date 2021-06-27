import 'package:alokito_new/models/gift_ask/gift_ask.dart';
import 'package:alokito_new/models/json_converters.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_ask_notification.freezed.dart';
part 'gift_ask_notification.g.dart';

@freezed
class GiftAskNotification with _$GiftAskNotification {
  const factory GiftAskNotification({
    String? id,
    @JsonKey(fromJson: giftAskFromJson, toJson: giftAskToJson) required GiftAsk giftAsk,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) required Timestamp createdAt,
  }) = _GiftAskNotification;

  factory GiftAskNotification.fromJson(Map<String, dynamic> json) => _$GiftAskNotificationFromJson(json);
}
