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
    totalReview: json['totalReview'] as int? ?? 0,
    reviewInStar: json['reviewInStar'] as int? ?? 0,
    userName: json['userName'] as String,
    email: json['email'] as String,
    imageUrl: json['imageUrl'] as String?,
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
      'totalReview': instance.totalReview,
      'reviewInStar': instance.reviewInStar,
      'userName': instance.userName,
      'email': instance.email,
      'imageUrl': instance.imageUrl,
      'role': instance.role,
      'giftOffered': instance.giftOffered,
      'giftReceived': instance.giftReceived,
      'position': myPositionToJson(instance.position),
      'createdAt': timestampToJson(instance.createdAt),
    };
