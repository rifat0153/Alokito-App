import 'package:alokito_new/models/chat_room/chat_room.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class BaseChatRoomService {
  Future<ChatRoomListUnion> getChatRooms({required String userId});

  Future<ChatRoomCreateUnion> createChatRoom({required ChatRoom chatRoom});
}

class ChatRoomService implements BaseChatRoomService {
  ChatRoomService({
    required this.firestore,
  });

  FirebaseFirestore firestore;

  @override
  Future<ChatRoomListUnion> getChatRooms({required String userId}) async {
    try {
      // Get chat rooms for UserId
      final chatRoomSnapshot = await firestore
          .collection('chat_rooms')
          .where('users', arrayContainsAny: [userId])
          .orderBy('createdAt', descending: true)
          .get();

      // Convert from DocumentSnapshot to ChatRoom
      final List<ChatRoom> chatRooms =
          chatRoomSnapshot.docs.map((QueryDocumentSnapshot documentSnapshot) {
        return ChatRoom.fromJson(documentSnapshot.data() as Map<String, dynamic>);
      }).toList();

      // Success Case
      return chatRooms.isEmpty
          ? const ChatRoomListUnion.empty()
          : ChatRoomListUnion.data(chatRooms: chatRooms);
    } on FirebaseException catch (e) {
      return ChatRoomListUnion.error(e.message ?? 'Something went wrong');
    } on Exception catch (e) {
      return ChatRoomListUnion.error(e);
    }
  }

  @override
  Future<ChatRoomCreateUnion> createChatRoom({required ChatRoom chatRoom}) async {
    try {
      // First find if chat_room with id already exists
      final querySnapshot = await firestore
          .collection('chat_room')
          .where('relatedDocId', isEqualTo: chatRoom.relatedDocId)
          .where('users', arrayContains: chatRoom.users)
          .get();

      if (querySnapshot.docs.isNotEmpty) return const ChatRoomCreateUnion.success();

      await firestore.collection('chat_rooms').add(chatRoom.toJson());

      return const ChatRoomCreateUnion.success();
    } on FirebaseException catch (e) {
      return ChatRoomCreateUnion.error(e.message ?? 'some unexpected error occurred');
    }
  }
}
