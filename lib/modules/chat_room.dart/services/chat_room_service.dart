import 'package:alokito_new/models/chat_room.dart/chat_room.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:alokito_new/models/chat/chat.dart';

abstract class BaseChatRoomService {
  Future<ChatRoomListUnion> getChatRooms({required String userId});

  Future<ChatRoom> createChatRoom({required List<String> users, required String roomTopic});
}

class ChatRoomService implements BaseChatRoomService {
  ChatRoomService({
    required this.firestore,
  });

  FirebaseFirestore firestore;

  @override
  Future<ChatRoomListUnion> getChatRooms({required String userId}) async {
    try {
      print('ChatRoomService Called');

      // Get chat rooms for UserId
      final chatRoomSnapshot = await firestore
          .collection('chat_rooms')
          .where('users', arrayContainsAny: [userId])
          .orderBy('createdAt', descending: true)
          .get();

      // Convert from DocumentSnapshot to ChatRoom
      final List<ChatRoom> chatRooms = chatRoomSnapshot.docs.map((QueryDocumentSnapshot documentSnapshot) {
        return ChatRoom.fromJson(documentSnapshot.data());
      }).toList();

      // Success Case
      return chatRooms.isEmpty ? const ChatRoomListUnion.empty() : ChatRoomListUnion.data(chatRooms: chatRooms);
    } on FirebaseException catch (e) {
      return ChatRoomListUnion.error(e.message ?? 'Something went wrong');
    } on Exception catch (e) {
      return ChatRoomListUnion.error(e);
    }
  }

  @override
  Future<ChatRoom> createChatRoom({required List<String> users, required String roomTopic}) async {
    // TODO: implement addMessage
    throw UnimplementedError();
  }
}
