import 'package:alokito_new/models/chat_room/chat_room.dart';
import 'package:alokito_new/modules/chat_room/views/chat_room_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../auth/controllers/auth_controller.dart';
import '../services/chat_room_service.dart';

class ChatRoomController extends GetxController {
  ChatRoomController({
    required this.chatRoomService,
  });
  ChatRoomService chatRoomService;

  // List State
  final chatRoomList = const ChatRoomListUnion.loading().obs;
  // Creating State
  final chatRoomCreateState = const ChatRoomCreateUnion.loading().obs;
  final currentUserId = ''.obs;

  @override
  void onReady() {
    retriveChatRoomsByUserId();
    super.onReady();
  }

  Future<void> createChatRoom({
    required String relatedDocId,
    required String user1,
    required String user1Image,
    required String user1Name,
    required String user2,
    required String user2Image,
    required String user2Name,
    required String roomType,
  }) async {
    chatRoomCreateState.value = const ChatRoomCreateUnion.loading();

    final Map<String, String> names = {user1: user1Name, user2: user2Name};
    final Map<String, String> images = {user1: user1Image, user2: user2Image};

    final chatRoom = ChatRoom(
      relatedDocId: relatedDocId,
      roomType: roomType,
      users: [user1, user2],
      usersIds: '$user1$user2',
      names: names,
      images: images,
      createdAt: Timestamp.now(),
    );

    chatRoomCreateState.value = await chatRoomService.createChatRoom(chatRoom: chatRoom);

    if (chatRoomCreateState.value == const ChatRoomCreateUnion.success()) {
      await Get.toNamed(ChatRoomView.route);
    }
  }

  Future<void> retriveChatRoomsByUserId() async {
    final userId = Get.find<AuthController>().getCurrentUserId();
    currentUserId.value = userId;

    chatRoomList.value = await chatRoomService.getChatRooms(userId: userId);
  }

  //  ******************* Helper Functions *******************
  String getImageUrlToShowInTile({required ChatRoom chatRoom}) {
    String imageUrl = '';

    for (final key in chatRoom.images!.keys) {
      if (key != currentUserId.value) {
        imageUrl = chatRoom.images![key] ?? '';
      }
    }

    return imageUrl;
  }

  // Helper Functions
  String getUserNameToShowInTile({required ChatRoom chatRoom}) {
    String name = '';

    for (final key in chatRoom.names!.keys) {
      if (key != currentUserId.value) {
        name = chatRoom.names![key] ?? '';
      }
    }

    return name;
  }
}
