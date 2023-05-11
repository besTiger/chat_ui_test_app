import 'package:chat_ui_test_app/screens/chat_screen/widgets/unread_message_badge_widget.dart';
import 'package:flutter/material.dart';

class ChatTrailing extends StatelessWidget {
  final String time;
  final String numOfMsg;

  const ChatTrailing({
    Key? key,
    required this.time,
    required this.numOfMsg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          time,
          style: const TextStyle(
            fontSize: 12.0,
            color: Color(0xFF507B96),
          ),
        ),
        const SizedBox(height: 5.0),
        UnreadMessageBadge(count: numOfMsg),
      ],
    );
  }
}
