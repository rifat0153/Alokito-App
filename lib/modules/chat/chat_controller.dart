import 'package:alokito_new/models/chat_room/chat_room.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
  late final TextEditingController textController;
  late final ScrollController scrollController;

  final message = ''.obs;

  @override
  void onInit() {
    super.onInit();
    textController = TextEditingController();
    scrollController = ScrollController();

    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent == scrollController.position.pixels) {
        print('Extent reached');
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
    scrollController.dispose();
  }

  Future<void> sendMessage({required ChatRoom chatRoom}) async {
    final currentUserId = Get.find<AuthController>().getCurrentUserId();

    final chat = Chat(
      chatRoomId: chatRoom.id ?? '',
      message: message.value,
      senderId: currentUserId,
      createdAt: Timestamp.now(),
    );

    final isSuccess = await chatService.addMessage(chat: chat);

    if (isSuccess) textController.text = '';

    // scrollController.animateTo(scrollController.position.maxScrollExtent,
    //     duration: const Duration(milliseconds: 100), curve: Curves.easeInOutSine);
  }
}
