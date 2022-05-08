import 'package:alokito_new/models/chat_room/chat_room.dart';
import 'package:alokito_new/modules/chat/chat_view.dart';
import 'package:alokito_new/shared/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/date/date_service.dart';
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
    final String timeDiff = DateService.timeDifferenceFromTimestamp(chatRoom.createdAt ?? Timestamp.now());

    return InkWell(
      onTap: () => Get.to(() => ChatView(chatRoom: chatRoom)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kSpacing * 1.5, vertical: 8),
        child: Container(
          decoration: BoxDecoration(
            // color: Colors.blue,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: kRadius * 4,
                    backgroundImage: NetworkImage(userImageToShow),
                  ),
                  const SizedBox(width: kSpacing),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: kSpacing, horizontal: kSpacing),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(userNameToShow, fontSize: 24.sp),
                          MyText(
                            '$timeDiff ago',
                            fontSize: 12,
                            color: Colors.grey.shade500,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kSpacing),
              const Divider(height: 1, color: Color(0XFFCDD4D9))
            ],
          ),
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
