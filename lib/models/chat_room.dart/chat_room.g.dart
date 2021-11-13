// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatRoom _$$_ChatRoomFromJson(Map<String, dynamic> json) => _$_ChatRoom(
      id: json['id'] as String?,
      roomType: json['roomType'] as String?,
      users: chatRoomUserIdArrayFromJson(json['users'] as List),
      createdAt: timestampFromJson(json['createdAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_ChatRoomToJson(_$_ChatRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomType': instance.roomType,
      'users': chatRoomUserIdArrayToJson(instance.users),
      'createdAt': timestampToJson(instance.createdAt),
    };
