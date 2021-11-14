import 'package:alokito_new/models/user/firebase_converters.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_room.freezed.dart';
part 'chat_room.g.dart';

@freezed
class ChatRoom with _$ChatRoom {
  const ChatRoom._();

  factory ChatRoom({
    String? id,
    String? roomType,
    Map<String, String>? names,
    Map<String, String>? images,
    @JsonKey(fromJson: chatRoomUserIdArrayFromJson, toJson: chatRoomUserIdArrayToJson) List<String>? users,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) Timestamp? createdAt,
  }) = _ChatRoom;

  factory ChatRoom.fromJson(Map<String, dynamic> json) => _$ChatRoomFromJson(json);
}

@freezed
class ChatRoomListUnion with _$ChatRoomListUnion {
  const factory ChatRoomListUnion.data({required List<ChatRoom> chatRooms}) = ListSuccess;
  const factory ChatRoomListUnion.empty() = ListEmpty;
  const factory ChatRoomListUnion.loading() = ListLoading;
  const factory ChatRoomListUnion.error(Object e) = ListError;
}

// Converters
List<String>? chatRoomUserIdArrayFromJson(List<dynamic> json) {
  return json.map((e) => e.toString()).toList();
}

List<String>? chatRoomUserIdArrayToJson(List<String>? json) {
  return json;
}
