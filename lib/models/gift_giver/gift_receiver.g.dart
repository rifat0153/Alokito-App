// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_receiver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftReceiver _$_$_GiftReceiverFromJson(Map<String, dynamic> json) {
  return _$_GiftReceiver(
    id: json['id'] as String?,
    giverId: json['giverId'] as String?,
    comment: json['comment'] as String,
    messageForRequesterSent: json['messageForRequesterSent'] as bool? ?? false,
    messageForGiverrSent: json['messageForGiverrSent'] as bool? ?? false,
    giftReceiverStatus: giftReceiverStatusFromJson(
        json['giftReceiverStatus'] as Map<String, dynamic>),
    gift: giftGiverFromJson(json['gift'] as String),
    requester: localUserFromJson(json['requester'] as String),
    createdAt: DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$_$_GiftReceiverToJson(_$_GiftReceiver instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giverId': instance.giverId,
      'comment': instance.comment,
      'messageForRequesterSent': instance.messageForRequesterSent,
      'messageForGiverrSent': instance.messageForGiverrSent,
      'giftReceiverStatus':
          giftReceiverStatusToJson(instance.giftReceiverStatus),
      'gift': giftGiverToJson(instance.gift),
      'requester': localUserToJson(instance.requester),
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
