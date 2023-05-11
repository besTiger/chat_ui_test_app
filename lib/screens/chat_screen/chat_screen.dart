import 'package:chat_ui_test_app/screens/chat_screen/widgets/chat_app_bar.dart';
import 'package:chat_ui_test_app/screens/chat_screen/widgets/chat_list_widget.dart';
import 'package:chat_ui_test_app/screens/chat_screen/widgets/chat_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:chat_ui_test_app/models/messages.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  ChatScreenState createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  List<Message> filteredMessages = [];

  @override
  void initState() {
    super.initState();
    filteredMessages = messages;
  }

  void filterMessages(String query) {
    setState(() {
      filteredMessages = messages
          .where((message) =>
          message.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ChatAppBar(messages: filteredMessages),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: ChatSearchBar(onChanged: filterMessages),
            ),
            Expanded(
              child: ChatList(messages: filteredMessages),
            ),
          ],
        ),
      ),
    );
  }
}


