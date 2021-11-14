import 'package:alokito_new/models/chat_room.dart/chat_room.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/chat_room.dart/services/chat_room_service.dart';
import 'package:get/get.dart';

class ChatRoomController extends GetxController {
  ChatRoomController({
    required this.chatRoomService,
  });
  ChatRoomService chatRoomService;

  final chatRoomList = const ChatRoomListUnion.loading().obs;
  final currentUserId = ''.obs;

  @override
  void onReady() {
    retriveChatRoomsByUserId();
    super.onReady();
  }

  Future<void> retriveChatRoomsByUserId() async {
    final userId = Get.find<AuthController>().getCurrentUserId();
    currentUserId.value = userId;

    chatRoomList.value = await chatRoomService.getChatRooms(userId: userId);
  }

  String getImageUrlToShowInTile({required ChatRoom chatRoom}) {
    String imageUrl = '';

    for (final key in chatRoom.images!.keys) {
      if (key != currentUserId.value) {
        imageUrl = chatRoom.images![key] ?? '';
      }
    }

    return imageUrl;
  }

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
