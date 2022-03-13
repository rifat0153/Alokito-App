import 'package:alokito_new/di/firebase_di.dart';
import 'package:alokito_new/models/chat/chat.dart';
import 'package:alokito_new/models/chat_room/chat_room.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/chat/chat_controller.dart';
import 'package:alokito_new/modules/chat/chat_service.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
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
            Container(
              color: Colors.grey.shade200,
              child: Row(
                children: [
                  SvgPicture.asset(
                    MyAssets.paperClipIcon,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: controller.textController,
                        onChanged: (val) {},
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Aa",
                          filled: true,
                          contentPadding: const EdgeInsets.all(16),
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
