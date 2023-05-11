import 'package:flutter/material.dart';
import '../../../models/messages.dart';

class ChatAppBar extends StatelessWidget {
  final List<Message> messages;

  const ChatAppBar({super.key, required this.messages});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Chat',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      toolbarHeight: 80.0,
      centerTitle: true,
      backgroundColor: const Color(0xFF06293E),
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: CircleAvatar(
          backgroundImage: AssetImage(messages[0].image),
          radius: 17.0,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            iconSize: 32.0,
            icon: const Icon(Icons.add_comment_outlined),
            onPressed: () {
              // Add your logic here
            },
          ),
        ),
      ],
    );
  }
}
