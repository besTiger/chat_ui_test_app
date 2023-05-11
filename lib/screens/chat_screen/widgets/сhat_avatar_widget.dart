import 'package:flutter/material.dart';

class ChatAvatar extends StatelessWidget {
  final String image;

  const ChatAvatar({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(image),
      radius: 28.0,
    );
  }
}