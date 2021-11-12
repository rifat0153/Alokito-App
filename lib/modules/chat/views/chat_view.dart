import 'package:alokito_new/di/firebase_di.dart';
import 'package:alokito_new/modules/chat/controllers/chat_controller.dart';
import 'package:alokito_new/modules/chat/services/chat_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatView extends StatelessWidget {
  ChatView({Key? key}) : super(key: key);

  final ChatController controller =
      Get.put(ChatController(chatService: ChatService(firestore: FirebaseDI().firestore)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Text(controller.chatList.value.length.toString()),
        ),
      ),
    );
  }
}
