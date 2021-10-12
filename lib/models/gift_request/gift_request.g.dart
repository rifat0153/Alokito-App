// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftRequest _$_$_GiftRequestFromJson(Map<String, dynamic> json) {
  return _$_GiftRequest(
    id: json['id'] as String?,
    giverId: json['giverId'] as String?,
    comment: json['comment'] as String,
    messageForRequesterSent: json['messageForRequesterSent'] as bool? ?? false,
    messageForGiverSent: json['messageForGiverSent'] as bool? ?? false,
    giftRequestStatus:
        giftRequestStatusFromJson(json['giftRequestStatus'] as String),
    gift: giftFromMap(json['gift'] as Map<String, dynamic>),
    requester:
        localUserNonNullFromMap(json['requester'] as Map<String, dynamic>),
    createdAt: DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$_$_GiftRequestToJson(_$_GiftRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giverId': instance.giverId,
      'comment': instance.comment,
      'messageForRequesterSent': instance.messageForRequesterSent,
      'messageForGiverSent': instance.messageForGiverSent,
      'giftRequestStatus': giftRequestStatusToJson(instance.giftRequestStatus),
      'gift': giftToMap(instance.gift),
      'requester': localUserNonNullToMap(instance.requester),
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$Pending _$_$PendingFromJson(Map<String, dynamic> json) {
  return _$Pending();
}

Map<String, dynamic> _$_$PendingToJson(_$Pending instance) =>
    <String, dynamic>{};

_$Confirmed _$_$ConfirmedFromJson(Map<String, dynamic> json) {
  return _$Confirmed();
}

Map<String, dynamic> _$_$ConfirmedToJson(_$Confirmed instance) =>
    <String, dynamic>{};

_$CanceledByGiver _$_$CanceledByGiverFromJson(Map<String, dynamic> json) {
  return _$CanceledByGiver();
}

Map<String, dynamic> _$_$CanceledByGiverToJson(_$CanceledByGiver instance) =>
    <String, dynamic>{};

_$CanceledByRequester _$_$CanceledByRequesterFromJson(
    Map<String, dynamic> json) {
  return _$CanceledByRequester();
}

Map<String, dynamic> _$_$CanceledByRequesterToJson(
        _$CanceledByRequester instance) =>
    <String, dynamic>{};

_$Accepted _$_$AcceptedFromJson(Map<String, dynamic> json) {
  return _$Accepted();
}

Map<String, dynamic> _$_$AcceptedToJson(_$Accepted instance) =>
    <String, dynamic>{};

_$Delivered _$_$DeliveredFromJson(Map<String, dynamic> json) {
  return _$Delivered();
}

Map<String, dynamic> _$_$DeliveredToJson(_$Delivered instance) =>
    <String, dynamic>{};
