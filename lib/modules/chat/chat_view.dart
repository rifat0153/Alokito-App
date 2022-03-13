import 'package:alokito_new/core/date/date_helper.dart';
import 'package:alokito_new/di/firebase_di.dart';
import 'package:alokito_new/models/chat/chat.dart';
import 'package:alokito_new/models/chat_room/chat_room.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/modules/chat/chat_controller.dart';
import 'package:alokito_new/modules/chat/chat_service.dart';
import 'package:alokito_new/modules/chat/widgets/send_message_widget.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:alokito_new/shared/constants.dart';
import 'package:alokito_new/shared/widget/my_scaffold.dart';
import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

import 'package:get/get_connect/http/src/utils/utils.dart';

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

    return MyScaffold(
      assetPath: MyAssets.settingsBgImage,
      appBarTitle: 'Chats',
      child: Column(
        children: [
          Expanded(
            child: FirestoreListView<Chat>(
              controller: controller.scrollController,
              pageSize: 20,
              reverse: true,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              query: query,
              itemBuilder: (_, snapshot) {
                final chat = snapshot.data();

                final isMyMessage = userId == chat.senderId;

                return Row(
                  mainAxisAlignment: isMyMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment:
                            isMyMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: isMyMessage ? Colors.grey.shade100 : const Color(0xFF353445),
                                borderRadius: BorderRadius.circular(kRadius * 3)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: kSpacing * 2, vertical: kSpacing),
                            child: MyText(
                              chat.message,
                              color: isMyMessage ? Colors.black : Colors.white,
                            ),
                          ),
                          MyText(
                            DateHelper.timeDifferenceFromTimestamp(
                                chat.createdAt ?? Timestamp.now()),
                            fontSize: 10,
                            color: Colors.grey.shade500,
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SendMessageWidget(controller: controller, chatRoom: chatRoom)
        ],
      ),
    );
  }
}
