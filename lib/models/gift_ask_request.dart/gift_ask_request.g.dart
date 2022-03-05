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
      messageForRequester: json['messageForRequester'] as String? ?? '',
      messageForGiver: json['messageForGiver'] as String? ?? '',
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
      'messageForRequester': instance.messageForRequester,
      'messageForGiver': instance.messageForGiver,
      'giftAskRequestStatus':
          giftAskRequestStatusToJson(instance.giftAskRequestStatus),
      'giftAsk': giftAskToMap(instance.giftAsk),
      'giver': localUserNonNullToMap(instance.giver),
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$Pending _$$PendingFromJson(Map<String, dynamic> json) => _$Pending(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PendingToJson(_$Pending instance) => <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$Confirmed _$$ConfirmedFromJson(Map<String, dynamic> json) => _$Confirmed(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConfirmedToJson(_$Confirmed instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$CanceledByGiver _$$CanceledByGiverFromJson(Map<String, dynamic> json) =>
    _$CanceledByGiver(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CanceledByGiverToJson(_$CanceledByGiver instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$CanceledByRequester _$$CanceledByRequesterFromJson(
        Map<String, dynamic> json) =>
    _$CanceledByRequester(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CanceledByRequesterToJson(
        _$CanceledByRequester instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$Accepted _$$AcceptedFromJson(Map<String, dynamic> json) => _$Accepted(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AcceptedToJson(_$Accepted instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$Delivered _$$DeliveredFromJson(Map<String, dynamic> json) => _$Delivered(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DeliveredToJson(_$Delivered instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
