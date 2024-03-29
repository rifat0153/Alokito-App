import 'package:alokito_new/models/user/firebase_converters.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    String? id,
    required String message,
    required String senderId,
    required String chatRoomId,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) Timestamp? createdAt,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
