import 'package:alokito_new/models/chat_room.dart/chat_room.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/chat_room.dart/services/chat_room_service.dart';
import 'package:get/get.dart';

class ChatRoomController extends GetxController {
  ChatRoomController({
    required this.chatRoomService,
  });
  ChatRoomService chatRoomService;

  final chatList = const ChatRoomListUnion.loading().obs;

  @override
  void onReady() {
    retriveChatRoomsByUserId();
    super.onReady();
  }

  void retriveChatRoomsByUserId() async {
    final userId = Get.find<AuthController>().getCurrentUserId();

    chatList.value = await chatRoomService.getChatRooms(userId: userId);
  }
}
