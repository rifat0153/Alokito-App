// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_ask_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftAskRequest _$$_GiftAskRequestFromJson(Map<String, dynamic> json) =>
    _$_GiftAskRequest(
      id: json['id'] as String?,
      giverId: json['giverId'] as String?,
      comment: json['comment'] as String,
      messageForRequesterSent:
          json['messageForRequesterSent'] as bool? ?? false,
      messageForGiverSent: json['messageForGiverSent'] as bool? ?? false,
      giftAskRequestStatus: json['giftAskRequestStatus'] == null
          ? const GiftAskRequestStatus.pending()
          : giftAskRequestStatusFromJson(
              json['giftAskRequestStatus'] as String),
      giftAsk: giftAskFromMap(json['giftAsk'] as Map<String, dynamic>),
      giver: localUserNonNullFromMap(json['giver'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_GiftAskRequestToJson(_$_GiftAskRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giverId': instance.giverId,
      'comment': instance.comment,
      'messageForRequesterSent': instance.messageForRequesterSent,
      'messageForGiverSent': instance.messageForGiverSent,
      'giftAskRequestStatus':
          giftAskRequestStatusToJson(instance.giftAskRequestStatus),
      'giftAsk': giftAskToMap(instance.giftAsk),
      'giver': localUserNonNullToMap(instance.giver),
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$Pending _$$PendingFromJson(Map<String, dynamic> json) => _$Pending();

Map<String, dynamic> _$$PendingToJson(_$Pending instance) =>
    <String, dynamic>{};

_$Confirmed _$$ConfirmedFromJson(Map<String, dynamic> json) => _$Confirmed();

Map<String, dynamic> _$$ConfirmedToJson(_$Confirmed instance) =>
    <String, dynamic>{};

_$CanceledByGiver _$$CanceledByGiverFromJson(Map<String, dynamic> json) =>
    _$CanceledByGiver();

Map<String, dynamic> _$$CanceledByGiverToJson(_$CanceledByGiver instance) =>
    <String, dynamic>{};

_$CanceledByRequester _$$CanceledByRequesterFromJson(
        Map<String, dynamic> json) =>
    _$CanceledByRequester();

Map<String, dynamic> _$$CanceledByRequesterToJson(
        _$CanceledByRequester instance) =>
    <String, dynamic>{};

_$Accepted _$$AcceptedFromJson(Map<String, dynamic> json) => _$Accepted();

Map<String, dynamic> _$$AcceptedToJson(_$Accepted instance) =>
    <String, dynamic>{};

_$Delivered _$$DeliveredFromJson(Map<String, dynamic> json) => _$Delivered();

Map<String, dynamic> _$$DeliveredToJson(_$Delivered instance) =>
    <String, dynamic>{};
