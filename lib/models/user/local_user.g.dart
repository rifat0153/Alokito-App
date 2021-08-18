// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalUser _$_$_LocalUserFromJson(Map<String, dynamic> json) {
  return _$_LocalUser(
    id: json['id'] as String?,
    distance: (json['distance'] as num?)?.toDouble(),
    email: json['email'] as String,
    userName: json['userName'] as String,
    imageUrl: json['imageUrl'] as String,
    geometry: geometryFromJson(json['geometry'] as Map<String, dynamic>),
    firstName: json['firstName'] as String? ?? '',
    lastName: json['lastName'] as String? ?? '',
    hasNotifications: json['hasNotifications'] as bool? ?? false,
    ratingSum: (json['ratingSum'] as num?)?.toDouble() ?? 0,
    totalRating: (json['totalRating'] as num?)?.toDouble() ?? 0,
    averageRating: (json['averageRating'] as num?)?.toDouble() ?? 0,
    giftGiven: (json['giftGiven'] as num?)?.toDouble() ?? 0,
    giftReceived: (json['giftReceived'] as num?)?.toDouble() ?? 0,
    hasGiftGiverRequest: json['hasGiftGiverRequest'] as bool? ?? false,
    hasGiftAskRequest: json['hasGiftAskRequest'] as bool? ?? false,
    requestedGiftId: json['requestedGiftId'] as String? ?? '',
    acceptedGiftId: json['acceptedGiftId'] as String? ?? '',
    role: json['role'] as String? ?? 'user',
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
    v: json['v'] as int? ?? 1,
  );
}

Map<String, dynamic> _$_$_LocalUserToJson(_$_LocalUser instance) => <String, dynamic>{
      'id': instance.id,
      'distance': instance.distance,
      'email': instance.email,
      'userName': instance.userName,
      'imageUrl': instance.imageUrl,
      'geometry': geometryToJson(instance.geometry),
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'hasNotifications': instance.hasNotifications,
      'ratingSum': instance.ratingSum,
      'totalRating': instance.totalRating,
      'averageRating': instance.averageRating,
      'giftGiven': instance.giftGiven,
      'giftReceived': instance.giftReceived,
      'hasGiftGiverRequest': instance.hasGiftGiverRequest,
      'hasGiftAskRequest': instance.hasGiftAskRequest,
      'requestedGiftId': instance.requestedGiftId,
      'acceptedGiftId': instance.acceptedGiftId,
      'role': instance.role,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'v': instance.v,
    };

_$_Geometry _$_$_GeometryFromJson(Map<String, dynamic> json) {
  return _$_Geometry(
    type: json['type'] as String? ?? 'Point',
    id: json['id'] as String?,
    coordinates: (json['coordinates'] as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
  );
}

Map<String, dynamic> _$_$_GeometryToJson(_$_Geometry instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'coordinates': instance.coordinates,
    };
