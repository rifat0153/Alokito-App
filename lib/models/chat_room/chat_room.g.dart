// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatRoom _$$_ChatRoomFromJson(Map<String, dynamic> json) => _$_ChatRoom(
      relatedDocId: json['relatedDocId'] as String,
      roomType: json['roomType'] as String?,
      names: (json['names'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      images: (json['images'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      users:
          (json['users'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdAt: timestampFromJson(json['createdAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_ChatRoomToJson(_$_ChatRoom instance) =>
    <String, dynamic>{
      'relatedDocId': instance.relatedDocId,
      'roomType': instance.roomType,
      'names': instance.names,
      'images': instance.images,
      'users': instance.users,
      'createdAt': timestampToJson(instance.createdAt),
    };
