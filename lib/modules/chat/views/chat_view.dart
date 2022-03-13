import 'package:alokito_new/di/firebase_di.dart';
import 'package:alokito_new/models/chat/chat.dart';
import 'package:alokito_new/models/chat_room/chat_room.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/chat/controllers/chat_controller.dart';
import 'package:alokito_new/modules/chat/services/chat_service.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:get/get.dart';

class ChatViewParams {}

class ChatView extends StatelessWidget {
  ChatView({Key? key, required this.chatRoom}) : super(key: key);

  final ChatRoom chatRoom;

  final ChatController controller =
      Get.put(ChatController(chatService: ChatService(firestore: FirebaseDI().firestore)));

  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    final userId = authController.getCurrentUserId();

    final query = FirebaseFirestore.instance
        .collection('chats')
        .where('chatRoomId', isEqualTo: chatRoom.id)
        .orderBy('createdAt', descending: true)
        .withConverter<Chat>(
            fromFirestore: (snapshot, _) => Chat.fromJson(snapshot.data()!),
            toFirestore: (chat, _) => chat.toJson());

    return Scaffold(
      body: SafeArea(
        child: FirestoreListView<Chat>(
          query: query,
          itemBuilder: (_, snapshot) {
            final chat = snapshot.data();

            return Row(
              mainAxisAlignment:
                  userId == chat.senderId ? MainAxisAlignment.end : MainAxisAlignment.start,
              children: [
                MyText(
                  chat.message,
                  color: Colors.black,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
