import 'package:alokito_new/models/gift_giver/gift_giver.dart';
import 'package:alokito_new/models/json_converters.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_receiver.freezed.dart';
part 'gift_receiver.g.dart';

@freezed
class GiftRequest with _$GiftRequest {
  factory GiftRequest({
    String? id,
    String? giverId,
    required String comment,
    @Default(false) bool messageForRequesterSent,
    @Default(false) bool messageForGiverrSent,
    @Default(GiftRequestStatus.pending())
    @JsonKey(fromJson: giftRequestStatusFromJson, toJson: giftRequestStatusToJson)
        GiftRequestStatus giftRequestStatus,
    @JsonKey(fromJson: giftGiverFromMap, toJson: giftGiverToMap) required GiftGiver gift,
    @JsonKey(fromJson: localUserNonNullFromMap, toJson: localUserNonNullToMap) required LocalUser requester,
    required DateTime createdAt,
  }) = _GiftRequest;

  factory GiftRequest.fromJson(Map<String, dynamic> json) => _$GiftRequestFromJson(json);
}

@freezed
class GiftRequestStatus with _$GiftRequestStatus {
  const factory GiftRequestStatus.pending() = Pending;
  const factory GiftRequestStatus.confirmed() = Confirmed;
  const factory GiftRequestStatus.canceledByGiver() = CanceledByGiver;
  const factory GiftRequestStatus.canceledByRequester() = CanceledByRequester;
  const factory GiftRequestStatus.accepted() = Accepted;
  const factory GiftRequestStatus.delivered() = Delivered;

  factory GiftRequestStatus.fromJson(Map<String, dynamic> json) => _$GiftRequestStatusFromJson(json);
}

Map<String, dynamic> giftRequestStatusToJson(GiftRequestStatus giftRequestStatus) => giftRequestStatus.toJson();
GiftRequestStatus giftRequestStatusFromJson(Map<String, dynamic> json) => GiftRequestStatus.fromJson(json);

@freezed
class GiftRequestNotificationUnion with _$GiftRequestNotificationUnion {
  const factory GiftRequestNotificationUnion.dataa(GiftRequest giftRequest) = Data;
  const factory GiftRequestNotificationUnion.loading() = Loading;
  const factory GiftRequestNotificationUnion.error(Object err) = Error;
}
