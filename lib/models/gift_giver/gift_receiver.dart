import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_receiver.freezed.dart';
part 'gift_receiver.g.dart';

@freezed
class GiftReceiver with _$GiftReceiver {
  GiftReceiver._();

  factory GiftReceiver({
    String? id,
    String? giverId,
    required String comment,
    @Default(false) bool messageForRequesterSent,
    @Default(false) bool messageForGiverrSent,
    @Default(GiftReceiverStatus.pending())
    @JsonKey(fromJson: giftReceiverStatusFromJson, toJson: giftReceiverStatusToJson)
        GiftReceiverStatus giftReceiverStatus,
    @JsonKey(fromJson: giftGiverFromJson, toJson: giftGiverToJson) required GiftGiver gift,
    @JsonKey(fromJson: localUserFromJson, toJson: localUserToJson) required LocalUser requester,
     required DateTime createdAt,
  }) = _GiftReceiver;

  factory GiftReceiver.fromJson(Map<String, dynamic> json) => _$GiftReceiverFromJson(json);
}

@freezed
class GiftReceiverStatus with _$GiftReceiverStatus {
  const factory GiftReceiverStatus.pending() = Pending;
  const factory GiftReceiverStatus.confirmed() = Confirmed;
  const factory GiftReceiverStatus.canceledByGiver() = CanceledByGiver;
  const factory GiftReceiverStatus.canceledByRequester() = CanceledByRequester;
  const factory GiftReceiverStatus.accepted() = Accepted;
  const factory GiftReceiverStatus.delivered() = Delivered;

  factory GiftReceiverStatus.fromJson(Map<String, dynamic> json) => _$GiftReceiverStatusFromJson(json);
}

Map<String, dynamic> giftReceiverStatusToJson(GiftReceiverStatus giftReceiverStatus) => giftReceiverStatus.toJson();
GiftReceiverStatus giftReceiverStatusFromJson(Map<String, dynamic> json) => GiftReceiverStatus.fromJson(json);

@freezed
class GiftReceiverNotificationUnion with _$GiftReceiverNotificationUnion {
  const factory GiftReceiverNotificationUnion.dataa(GiftReceiver giftReceiver) = Data;
  const factory GiftReceiverNotificationUnion.loading() = Loading;
  const factory GiftReceiverNotificationUnion.error(Object err) = Error;
}
