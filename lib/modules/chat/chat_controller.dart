import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:alokito_new/models/chat/chat.dart';
import 'package:alokito_new/modules/chat/chat_service.dart';

class ChatController extends GetxController {
  ChatController({
    required this.chatService,
  });
  ChatService chatService;

  final RxList<Chat> chatList = RxList.empty();

  final message = '';
  late final TextEditingController textController;

  @override
  void onInit() {
    super.onInit();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> addChat() async {}
}
