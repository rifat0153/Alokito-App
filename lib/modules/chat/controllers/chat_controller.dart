import 'package:get/get.dart';

import 'package:alokito_new/models/chat/chat.dart';
import 'package:alokito_new/modules/chat/services/chat_service.dart';

class ChatController extends GetxController {
  ChatController({
    required this.chatService,
  });
  ChatService chatService;

  final RxList<Chat> chatList = RxList.empty();

  @override
  void onReady() {
    loadChat();
    super.onReady();
  }

  void loadChat() {
    chatList.bindStream(chatService.streamMessage(chatId: '1'));
  }
}
