import 'package:flutter/material.dart';

class ChatTitle extends StatelessWidget {
  final String name;

  const ChatTitle({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}