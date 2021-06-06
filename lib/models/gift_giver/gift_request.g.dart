// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftReqeust _$_$_GiftReqeustFromJson(Map<String, dynamic> json) {
  return _$_GiftReqeust(
    id: json['id'] as String?,
    giftId: json['giftId'] as String,
    giftRequestStatus:
        giftRequestStatusFromJson(json['giftRequestStatus'] as int),
    giverUid: json['giverUid'] as String,
    giftArea: json['giftArea'] as String,
    giftOfferedByRequester: json['giftOfferedByRequester'] as int,
    giftReceivedByRequester: json['giftReceivedByRequester'] as int,
    requesterUid: json['requesterUid'] as String,
    requesterMessage: json['requesterMessage'] as String,
    requesterAvgRating: (json['requesterAvgRating'] as num).toDouble(),
    requesterTotRating: (json['requesterTotRating'] as num).toDouble(),
    requesterRatingSum: (json['requesterRatingSum'] as num).toDouble(),
    giftFor: json['giftFor'] as int? ?? 0,
    giftType: giftTypeFromJson(json['giftType'] as int),
    giftImageUrl: json['giftImageUrl'] as String,
    giftDetails: json['giftDetails'] as String,
    requesterPosition:
        myPositionFromJson(json['requesterPosition'] as Map<String, dynamic>),
    giftPosition:
        myPositionFromJson(json['giftPosition'] as Map<String, dynamic>),
    requesterName: json['requesterName'] as String,
    giftGiverImageUrl: json['giftGiverImageUrl'] as String,
    requesterImageUrl: json['requesterImageUrl'] as String,
    createdAt: timestampFromJson(json['createdAt'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_GiftReqeustToJson(_$_GiftReqeust instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giftId': instance.giftId,
      'giftRequestStatus': giftRequestStatusToJson(instance.giftRequestStatus),
      'giverUid': instance.giverUid,
      'giftArea': instance.giftArea,
      'giftOfferedByRequester': instance.giftOfferedByRequester,
      'giftReceivedByRequester': instance.giftReceivedByRequester,
      'requesterUid': instance.requesterUid,
      'requesterMessage': instance.requesterMessage,
      'requesterAvgRating': instance.requesterAvgRating,
      'requesterTotRating': instance.requesterTotRating,
      'requesterRatingSum': instance.requesterRatingSum,
      'giftFor': instance.giftFor,
      'giftType': giftTypeToJson(instance.giftType),
      'giftImageUrl': instance.giftImageUrl,
      'giftDetails': instance.giftDetails,
      'requesterPosition': myPositionToJson(instance.requesterPosition),
      'giftPosition': myPositionToJson(instance.giftPosition),
      'requesterName': instance.requesterName,
      'giftGiverImageUrl': instance.giftGiverImageUrl,
      'requesterImageUrl': instance.requesterImageUrl,
      'createdAt': timestampToJson(instance.createdAt),
    };

_$Loading _$_$LoadingFromJson(Map<String, dynamic> json) {
  return _$Loading();
}

Map<String, dynamic> _$_$LoadingToJson(_$Loading instance) =>
    <String, dynamic>{};

_$Error _$_$ErrorFromJson(Map<String, dynamic> json) {
  return _$Error(
    json['e'] as Object,
  );
}

Map<String, dynamic> _$_$ErrorToJson(_$Error instance) => <String, dynamic>{
      'e': instance.e,
    };
