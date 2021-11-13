import 'package:alokito_new/modules/chat_room.dart/controllers/chat_room_controller.dart';
import 'package:alokito_new/modules/chat_room.dart/widgets/chat_room_chat_tile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatRoomView extends StatelessWidget {
  static const route = 'chat_room';
  final ChatRoomController controller = Get.find<ChatRoomController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SafeArea(
        child: Scaffold(
          body: controller.chatList.value.when(
            data: (chatRoomList) => ListView.builder(
              itemCount: chatRoomList.length,
              itemBuilder: (context, i) => ChatRoomChatTileWidget(chatRoom: chatRoomList[i]),
            ),
            loading: () => const Center(child: CupertinoActivityIndicator(radius: 12)),
            error: (e) => Text(e.toString()),
          ),
        ),
      ),
    );
  }
}
