// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$$_ChatFromJson(Map<String, dynamic> json) => _$_Chat(
      id: json['id'] as String?,
      text: json['text'] as String?,
      created_at: timestampFromJson(json['created_at'] as String?),
    );

Map<String, dynamic> _$$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'created_at': timestampToJson(instance.created_at),
    };
