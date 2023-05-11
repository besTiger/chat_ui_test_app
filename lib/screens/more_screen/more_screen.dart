import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(
          child: Text(
            "This is More Screen",
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        )
      ],
    );
  }
}
