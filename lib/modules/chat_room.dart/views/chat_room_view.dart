import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/widget/my_scaffold.dart';
import '../controllers/chat_room_controller.dart';
import '../widgets/chat_room_chat_tile_widget.dart';

class ChatRoomView extends StatelessWidget {
  static const route = 'chat_room';
  final ChatRoomController controller = Get.find<ChatRoomController>();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      assetPath: 'assets/images/settings_bg.png',
      appBarTitle: 'appBarTitle',
      child: Obx(
        () => controller.chatRoomList.value.when(
          data: (chatRoomList) => ListView.builder(
            itemCount: chatRoomList.length,
            itemBuilder: (context, i) => ChatRoomChatTileWidget(chatRoom: chatRoomList[i]),
          ),
          empty: () => const Center(child: MyText('No Chat Room')),
          loading: () => const LinearProgressIndicator(),
          error: (e) => Text(e.toString()),
        ),
      ),
    );
  }
}
