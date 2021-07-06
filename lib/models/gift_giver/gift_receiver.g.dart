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
    giftRequestStatus:
        giftRequestStatusFromJson(json['giftRequestStatus'] as int),
    giftGiver: giftGiverFromJson(json['giftGiver'] as Map<String, dynamic>),
    requester: localUserFromJson(json['requester'] as Map<String, dynamic>),
    createdAt: timestampFromJson(json['createdAt'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_GiftReceiverToJson(_$_GiftReceiver instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giverId': instance.giverId,
      'comment': instance.comment,
      'giftRequestStatus': giftRequestStatusToJson(instance.giftRequestStatus),
      'giftGiver': giftGiverToJson(instance.giftGiver),
      'requester': localUserToJson(instance.requester),
      'createdAt': timestampToJson(instance.createdAt),
    };
