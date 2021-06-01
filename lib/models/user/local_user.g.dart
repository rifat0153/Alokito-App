// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalUser _$_$_LocalUserFromJson(Map<String, dynamic> json) {
  return _$_LocalUser(
    id: json['id'] as String?,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    ratingSum: (json['ratingSum'] as num?)?.toDouble() ?? 0,
    totalRating: (json['totalRating'] as num?)?.toDouble() ?? 0,
    averageRating: (json['averageRating'] as num?)?.toDouble() ?? 0,
    userName: json['userName'] as String,
    email: json['email'] as String,
    imageUrl: json['imageUrl'] as String?,
    hasNotifications: json['hasNotifications'] as bool? ?? false,
    role: json['role'] as String? ?? 'user',
    giftOffered: json['giftOffered'] as int? ?? 0,
    giftReceived: json['giftReceived'] as int? ?? 0,
    position: myPositionFromJson(json['position'] as Map<String, dynamic>),
    createdAt: timestampFromJson(json['createdAt'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_LocalUserToJson(_$_LocalUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'ratingSum': instance.ratingSum,
      'totalRating': instance.totalRating,
      'averageRating': instance.averageRating,
      'userName': instance.userName,
      'email': instance.email,
      'imageUrl': instance.imageUrl,
      'hasNotifications': instance.hasNotifications,
      'role': instance.role,
      'giftOffered': instance.giftOffered,
      'giftReceived': instance.giftReceived,
      'position': myPositionToJson(instance.position),
      'createdAt': timestampToJson(instance.createdAt),
    };
