import 'package:alokito_new/models/chat_room/chat_room.dart';
import 'package:alokito_new/modules/auth/controllers/auth_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:get/get.dart';

import '../../../shared/widget/my_scaffold.dart';
import '../../../shared/widget/my_text.dart';
import '../controllers/chat_room_controller.dart';
import '../widgets/chat_room_chat_tile_widget.dart';

class ChatRoomView extends StatelessWidget {
  static const route = '/chat_room';
  final controller = Get.find<ChatRoomController>();
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    final userId = authController.getCurrentUserId();

    print('ChatRoomView: curentUserId $userId');

    final query = FirebaseFirestore.instance
        .collection('chat_rooms')
        .where('users', arrayContains: userId)
        .orderBy('createdAt', descending: true)
        .withConverter<ChatRoom>(
            fromFirestore: (snapshot, _) => ChatRoom.fromJson(snapshot.data()!),
            toFirestore: (chatRoom, _) => chatRoom.toJson());

    return MyScaffold(
      assetPath: MyPaths.settingsBgImage,
      appBarTitle: 'Your Chats',
      child: Obx(
        () => controller.chatRoomList.value.when(
          data: (chatRoomList) => FirestoreListView<ChatRoom>(
              query: query,
              itemBuilder: (context, snapshot) {
                final chatRoom = snapshot.data();

                // print('ChatRoomView' + chatRoom.toString());

                return ChatRoomChatTileWidget(chatRoom: chatRoom);
              }),
          empty: () => const Center(child: MyText('No Chat Room')),
          loading: () => const LinearProgressIndicator(),
          error: (e) => Text(e.toString()),
        ),
      ),
    );
  }
}
