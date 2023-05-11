import 'package:flutter/material.dart';
import '../../models/messages.dart';
import 'package:chat_ui_test_app/screens/chat_screen/widgets/chat_app_bar.dart';
import 'package:chat_ui_test_app/screens/chat_screen/widgets/chat_search_bar.dart';
import 'package:google_fonts/google_fonts.dart';

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
              child: ListView.separated(
                itemCount: filteredMessages.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final message = filteredMessages[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(message.image),
                      radius: 28.0,
                    ),
                    title: Text(
                      message.name,
                      style: GoogleFonts.lato(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          message.message,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 5.0),
                        if (message.category.isNotEmpty)
                          Container(
                            decoration: BoxDecoration(
                              color: message.contColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6.0,
                              vertical: 2.0,
                            ),
                            child: Text(
                              message.category,
                              style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                      ],
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          message.time,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFF507B96),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xfff25276),
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            message.numOfMsg,
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}