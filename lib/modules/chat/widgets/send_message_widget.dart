import 'package:alokito_new/models/chat_room/chat_room.dart';
import 'package:alokito_new/modules/chat/chat_controller.dart';
import 'package:alokito_new/shared/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SendMessageWidget extends StatelessWidget {
  const SendMessageWidget({
    Key? key,
    required this.controller,
    required this.chatRoom,
  }) : super(key: key);

  final ChatController controller;
  final ChatRoom chatRoom;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            MyAssets.paperClipIcon,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller.textController,
                onChanged: (val) {
                  controller.message.value = val.trim();
                },
                onSubmitted: (val) {
                  controller.message.value = val.trim();
                },
                onEditingComplete: () {
                  controller.sendMessage(chatRoom: chatRoom);
                },
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
          ),
          Obx(
            () => controller.message.value.isEmpty
                ? const SizedBox()
                : Transform.rotate(
                    angle: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Material(
                        color: Colors.grey.shade200,
                        child: IconButton(
                            onPressed: () {
                              controller.sendMessage(chatRoom: chatRoom);
                            },
                            icon: const Icon(
                              Icons.send_sharp,
                              color: Color(0xFF353445),
                            )),
                      ),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
