// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftNotification _$_$_GiftNotificationFromJson(Map<String, dynamic> json) {
  return _$_GiftNotification(
    id: json['id'] as String?,
    giftId: json['giftId'] as String,
    giftRequestStatus:
        giftRequestStatusFromJson(json['giftRequestStatus'] as int),
    giftImageUrl: json['giftImageUrl'] as String,
    requesterImageUrl: json['requesterImageUrl'] as String,
    requesterName: json['requesterName'] as String,
    requesterUid: json['requesterUid'] as String,
    requesterMessage: json['requesterMessage'] as String,
    requesterAvgRating: (json['requesterAvgRating'] as num).toDouble(),
    requesterTotRating: (json['requesterTotRating'] as num).toDouble(),
    requesterRatingSum: (json['requesterRatingSum'] as num).toDouble(),
    giverAvgRating: (json['giverAvgRating'] as num).toDouble(),
    giverTotRating: (json['giverTotRating'] as num).toDouble(),
    giverRatingSum: (json['giverRatingSum'] as num).toDouble(),
    giverName: json['giverName'] as String,
    giverImageUrl: json['giverImageUrl'] as String,
    giverUid: json['giverUid'] as String,
    giftLocation: json['giftLocation'] as String,
    giftArea: json['giftArea'] as String,
    notificationFor: json['notificationFor'] as String,
    giftPosition:
        myPositionFromJson(json['giftPosition'] as Map<String, dynamic>),
    requesterPosition:
        myPositionFromJson(json['requesterPosition'] as Map<String, dynamic>),
    giverPosition:
        myPositionFromJson(json['giverPosition'] as Map<String, dynamic>),
    notificationForList: (json['notificationForList'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    giverJoinedAt: timestampFromJson(json['giverJoinedAt'] as Timestamp),
    requesterJoinedAt:
        timestampFromJson(json['requesterJoinedAt'] as Timestamp),
    giftType: giftTypeFromJson(json['giftType'] as int),
    notificationType:
        giftNotificationTypeFromJson(json['notificationType'] as int),
    createdAt: timestampFromJson(json['createdAt'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_GiftNotificationToJson(
        _$_GiftNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'giftId': instance.giftId,
      'giftRequestStatus': giftRequestStatusToJson(instance.giftRequestStatus),
      'giftImageUrl': instance.giftImageUrl,
      'requesterImageUrl': instance.requesterImageUrl,
      'requesterName': instance.requesterName,
      'requesterUid': instance.requesterUid,
      'requesterMessage': instance.requesterMessage,
      'requesterAvgRating': instance.requesterAvgRating,
      'requesterTotRating': instance.requesterTotRating,
      'requesterRatingSum': instance.requesterRatingSum,
      'giverAvgRating': instance.giverAvgRating,
      'giverTotRating': instance.giverTotRating,
      'giverRatingSum': instance.giverRatingSum,
      'giverName': instance.giverName,
      'giverImageUrl': instance.giverImageUrl,
      'giverUid': instance.giverUid,
      'giftLocation': instance.giftLocation,
      'giftArea': instance.giftArea,
      'notificationFor': instance.notificationFor,
      'giftPosition': myPositionToJson(instance.giftPosition),
      'requesterPosition': myPositionToJson(instance.requesterPosition),
      'giverPosition': myPositionToJson(instance.giverPosition),
      'notificationForList': instance.notificationForList,
      'giverJoinedAt': timestampToJson(instance.giverJoinedAt),
      'requesterJoinedAt': timestampToJson(instance.requesterJoinedAt),
      'giftType': giftTypeToJson(instance.giftType),
      'notificationType': giftNotificationTypeToJson(instance.notificationType),
      'createdAt': timestampToJson(instance.createdAt),
    };
