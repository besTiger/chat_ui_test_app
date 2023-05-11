import 'package:flutter/material.dart';
import 'category_badge_widget.dart';


class ChatSubtitle extends StatelessWidget {
  final String message;
  final String category;
  final Color contColor;

  const ChatSubtitle({
    Key? key,
    required this.message,
    required this.category,
    required this.contColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          message,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 5.0),
        if (category.isNotEmpty)
          CategoryBadge(category: category, contColor: contColor),
      ],
    );
  }
}