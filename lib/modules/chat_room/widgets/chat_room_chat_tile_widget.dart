import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/date/date_helper.dart';
import '../../../models/chat_room.dart/chat_room.dart';
import '../../../shared/widget/my_text.dart';
import '../controllers/chat_room_controller.dart';

class ChatRoomChatTileWidget extends StatelessWidget {
  ChatRoomChatTileWidget({
    Key? key,
    required this.chatRoom,
  }) : super(key: key);

  final ChatRoom chatRoom;

  final ChatRoomController controller = Get.find<ChatRoomController>();

  @override
  Widget build(BuildContext context) {
    final String userNameToShow = controller.getUserNameToShowInTile(chatRoom: chatRoom);
    final String userImageToShow = controller.getImageUrlToShowInTile(chatRoom: chatRoom);
    final String timeDiff =
        DateHelper.timeDifferenceFromTimestamp(chatRoom.createdAt ?? Timestamp.now());

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.orange.shade200.withOpacity(0.7),
            Colors.orange.shade100.withOpacity(0.7),
          ]),
          borderRadius: BorderRadius.circular(10.r),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40.r,
              backgroundImage: NetworkImage(userImageToShow),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(userNameToShow, fontSize: 24.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MyText('$timeDiff ago'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
