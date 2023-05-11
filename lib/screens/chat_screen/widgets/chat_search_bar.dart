import 'package:flutter/material.dart';

class ChatSearchBar extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const ChatSearchBar({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                onChanged: onChanged,
                decoration: InputDecoration(
                  labelText: 'Search...',
                  prefixIcon: const Icon(Icons.search, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 4.0),
            SizedBox(
              width: 40.0,
              height: 40.0,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  // Add your logic here
                },
                iconSize: 32.0, // Increase the icon size
                icon:
                const ImageIcon(
                  AssetImage('assets/images/filter.png'),
                  size: 40.0, // Set the desired size
                  color: Color(0xFFF25276),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}