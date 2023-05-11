import 'package:chat_ui_test_app/screens/chat_screen/widgets/%D1%81hat_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:chat_ui_test_app/models/messages.dart';

import 'chat_subtitle_widget.dart';
import 'chat_title_widget.dart';
import 'chat_trailing_widget.dart';

class ChatListItem extends StatelessWidget {
  final Message message;

  const ChatListItem({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ChatAvatar(image: message.image),
      title: ChatTitle(name: message.name),
      subtitle: ChatSubtitle(
        message: message.message,
        category: message.category,
        contColor: message.contColor,
      ),
      trailing: ChatTrailing(
        time: message.time,
        numOfMsg: message.numOfMsg,
      ),
    );
  }
}











