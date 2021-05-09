// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalUser _$_$_LocalUserFromJson(Map<String, dynamic> json) {
  return _$_LocalUser(
    id: json['id'] as String?,
    firstName: json['firstName'] as String?,
    lastName: json['lastName'] as String?,
    userName: json['userName'] as String,
    email: json['email'] as String,
    imageUrl: json['imageUrl'] as String?,
    role: json['role'] as String? ?? 'user',
  );
}

Map<String, dynamic> _$_$_LocalUserToJson(_$_LocalUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'email': instance.email,
      'imageUrl': instance.imageUrl,
      'role': instance.role,
    };
