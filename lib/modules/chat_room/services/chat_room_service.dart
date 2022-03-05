import 'package:alokito_new/models/chat_room.dart/chat_room.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class BaseChatRoomService {
  Future<ChatRoomListUnion> getChatRooms({required String userId});

  Future<ChatRoomCreateUnion> createChatRoom({
    required String id,
    required List<String> users,
    required String roomTopic,
    required Map<String, String> names,
    required Map<String, String> images,
  });
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
  Future<ChatRoomCreateUnion> createChatRoom({
    required String id,
    required List<String> users,
    required String roomTopic,
    required Map<String, String> names,
    required Map<String, String> images,
  }) async {
    try {
      // First find if chat_room with id already exists
      final doc = await firestore.collection('chat_room').doc('1').get();
      if (doc.exists) {
        return const ChatRoomCreateUnion.success();
      }

      // If chat_room does not exist create a new room
      final chatRoom = ChatRoom(
        id: id,
        roomType: roomTopic,
        // users: [],
        names: names,
        images: images,
        // createdAt: Timestamp.now(),
      );

      await firestore.collection('chat_rooms').doc(id).set(chatRoom.toJson());

      return const ChatRoomCreateUnion.success();
    } on FirebaseException catch (e) {
      return ChatRoomCreateUnion.error(e.message ?? 'some unexpected error occurred');
    }
  }
}
