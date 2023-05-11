import 'package:flutter/material.dart';
import '../../../models/messages.dart';
import 'chat_list_item_widget.dart';

class ChatList extends StatefulWidget {
  final List<Message> messages;

  const ChatList({Key? key, required this.messages}) : super(key: key);

  @override
  ChatListState createState() => ChatListState();
}

class ChatListState extends State<ChatList> {
  final ScrollController _scrollController = ScrollController();
  final List<Message> _displayedMessages = [];

  @override
  void initState() {
    super.initState();
    _loadMoreMessages();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      _loadMoreMessages();
    }
  }

  void _loadMoreMessages() {
    const int batchSize = 20; // Number of messages to load at a time
    int startIndex = _displayedMessages.length;
    int endIndex = startIndex + batchSize;
    if (endIndex > widget.messages.length) {
      endIndex = widget.messages.length;
    }

    setState(() {
      _displayedMessages.addAll(widget.messages.getRange(startIndex, endIndex));
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _displayedMessages.length + 1, // Add 1 for loading indicator
      itemBuilder: (context, index) {
        if (index < _displayedMessages.length) {
          final message = _displayedMessages[index];
          return ChatListItem(message: message);
        } else {
          // Show loading indicator at the end of the list
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
