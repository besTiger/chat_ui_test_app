import 'package:flutter/material.dart';

class UnreadMessageBadge extends StatelessWidget {
  final String count;

  const UnreadMessageBadge({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xfff25276),
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(5.0),
      child: Text(
        count,
        style: const TextStyle(
          fontSize: 12.0,
          color: Colors.white,
        ),
      ),
    );
  }
}