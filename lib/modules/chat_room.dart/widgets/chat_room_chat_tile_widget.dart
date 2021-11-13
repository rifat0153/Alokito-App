import 'package:alokito_new/shared/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:alokito_new/models/chat_room.dart/chat_room.dart';

class ChatRoomChatTileWidget extends StatelessWidget {
  const ChatRoomChatTileWidget({
    Key? key,
    required this.chatRoom,
  }) : super(key: key);

  final ChatRoom chatRoom;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTilte(chatRoom),
      ],
    );
  }
}

Widget _buildTilte(ChatRoom chatRoom) {
  switch (chatRoom.roomType) {
    case 'giftRequest':
      return const MyText('Gift Giving');
    case 'giftAskRequest':
      return const MyText('Gift Ask Request');
    default:
      return const MyText('N/A');
  }
}
