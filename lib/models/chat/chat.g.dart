// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$$_ChatFromJson(Map<String, dynamic> json) => _$_Chat(
      id: json['id'] as String?,
      message: json['message'] as String,
      senderId: json['senderId'] as String,
      chatRoomId: json['chatRoomId'] as String,
      createdAt: timestampFromJson(json['createdAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'senderId': instance.senderId,
      'chatRoomId': instance.chatRoomId,
      'createdAt': timestampToJson(instance.createdAt),
    };
