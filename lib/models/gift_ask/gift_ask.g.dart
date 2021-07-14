// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_ask.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftAsk _$_$_GiftAskFromJson(Map<String, dynamic> json) {
  return _$_GiftAsk(
    id: json['id'] as String?,
    giftAskStatus: giftAskStatusFromJson(json['giftAskStatus'] as int),
    messageForRequesterSent: json['messageForRequesterSent'] as bool? ?? false,
    messageForGiverrSent: json['messageForGiverrSent'] as bool? ?? false,
    requester: localUserFromJson(json['requester'] as Map<String, dynamic>),
    address: json['address'] as String,
    area: json['area'] as String,
    position: myPositionFromJson(json['position'] as Map<String, dynamic>),
    reuqestDate: timestampFromJson(json['reuqestDate'] as Timestamp),
    requestForNoOfPeople: json['requestForNoOfPeople'] as int,
    prescriptionImageUrl: json['prescriptionImageUrl'] as String?,
    giftAskType: giftAskTypeFromJson(json['giftAskType'] as int),
    giftTitle: json['giftTitle'] as String,
    giftForSmallFamily: json['giftForSmallFamily'] as bool,
    note: json['note'] as String,
    createdAt: timestampFromJson(json['createdAt'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_GiftAskToJson(_$_GiftAsk instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giftAskStatus': giftAskStatusToJson(instance.giftAskStatus),
      'messageForRequesterSent': instance.messageForRequesterSent,
      'messageForGiverrSent': instance.messageForGiverrSent,
      'requester': localUserToJson(instance.requester),
      'address': instance.address,
      'area': instance.area,
      'position': myPositionToJson(instance.position),
      'reuqestDate': timestampToJson(instance.reuqestDate),
      'requestForNoOfPeople': instance.requestForNoOfPeople,
      'prescriptionImageUrl': instance.prescriptionImageUrl,
      'giftAskType': giftAskTypeToJson(instance.giftAskType),
      'giftTitle': instance.giftTitle,
      'giftForSmallFamily': instance.giftForSmallFamily,
      'note': instance.note,
      'createdAt': timestampToJson(instance.createdAt),
    };
