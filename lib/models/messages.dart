import 'package:flutter/material.dart';

class Message {
  final String image;
  final String name;
  final String message;
  final String time;
  final String unreadMessagesCount;
  final Color color;
  final Color fontColor;
  final Icon icon;
  final String category; // New property

  Message({
    required this.image,
    required this.name,
    required this.message,
    required this.time,
    required this.unreadMessagesCount,
    required this.color,
    required this.fontColor,
    required this.icon,
    required this.category, // Initialize the property
  });
}

List<Message> messages = [
  Message(
    image: 'assets/images/scientist.png',
    icon: const Icon(Icons.more_vert_rounded),
    name: 'Flutter Team',
    time: '11:40 am',
    unreadMessagesCount: '14',
    color: Colors.greenAccent,
    fontColor: Colors.greenAccent,
    message: 'Dart makes my heart flutter',
    category: 'General', // Assign the chat category
  ),
  Message(
    image: 'assets/images/medical-assistance-1.png',
    icon: const Icon(Icons.more_vert_rounded),
    name: 'Lisa Monroe',
    time: '3:22 pm',
    unreadMessagesCount: '1',
    color: Colors.greenAccent,
    fontColor: Colors.greenAccent,
    message: 'Dart makes my heart flutter',
    category: '',
  ),
  Message(
    image: 'assets/images/doctor-3.png',
    icon: const Icon(Icons.more_vert_rounded),
    name: 'Tobi Lou',
    time: '10:40 am',
    unreadMessagesCount: '4',
    color: Colors.greenAccent,
    fontColor: Colors.greenAccent,
    message: 'Dart makes my heart flutter',
    category: '',
  ),
  Message(
    image: 'assets/images/doctor-2.png',
    icon: const Icon(Icons.more_vert_rounded),
    name: 'Jeff',
    time: '01:40 pm',
    unreadMessagesCount: '6',
    color: Colors.yellowAccent,
    fontColor: Colors.greenAccent,
    message: 'Dart makes my heart flutter',
    category: '',
  ),
  Message(
    image: 'assets/images/medical-assistance.png',
    icon: const Icon(Icons.more_vert_rounded),
    name: 'Maria Scholes',
    time: '10:12 am',
    unreadMessagesCount: '2',
    color: Colors.greenAccent,
    fontColor: Colors.greenAccent,
    message: 'Dart makes my heart flutter',
    category: 'Privet',
  ),
  Message(
    image: 'assets/images/medical-assistance-4.png',
    icon: const Icon(Icons.more_vert_rounded),
    name: 'Paul Downey',
    time: '11:08 am',
    unreadMessagesCount: '7',
    color: Colors.yellowAccent,
    fontColor: Colors.greenAccent,
    message: 'Dart makes my heart flutter',
    category: '',
  ),
  Message(
    image: 'assets/images/medical-assistance-1.png',
    icon: const Icon(Icons.more_vert_rounded),
    name: 'Lisa Monroe',
    time: '09:40 am',
    unreadMessagesCount: '1',
    color: Colors.greenAccent,
    fontColor: Colors.greenAccent,
    message: 'Dart makes my heart flutter',
    category: '',
  ),
  Message(
    image: 'assets/images/scientist.png',
    icon: const Icon(Icons.more_vert_rounded),
    name: 'John Doe',
    time: '2:30 pm',
    unreadMessagesCount: '9',
    color: Colors.blueAccent,
    fontColor: Colors.greenAccent,
    message: 'Hello, how are you?',
    category: 'Sport',
  ),
  Message(
    image: 'assets/images/doctor-3.png',
    icon: const Icon(Icons.more_vert_rounded),
    name: 'Jane Smith',
    time: '3:45 pm',
    unreadMessagesCount: '3',
    color: Colors.yellowAccent,
    fontColor: Colors.greenAccent,
    message: 'I have a question for you.',
    category: '',
  ),
  Message(
    image: 'assets/images/scientist.png',
    icon: const Icon(Icons.more_vert_rounded),
    name: 'Flutter Team',
    time: '11:40 am',
    unreadMessagesCount: '14',
    color: Colors.greenAccent,
    fontColor: Colors.greenAccent,
    message: 'Dart makes my heart flutter',
    category: '',
  ),
  Message(
    image: 'assets/images/doctor-3.png',
    icon: const Icon(Icons.more_vert_rounded),
    name: 'Tobi Lou',
    time: '11:40 am',
    unreadMessagesCount: '4',
    color: Colors.greenAccent,
    fontColor: Colors.greenAccent,
    message: 'Dart makes my heart flutter',
    category: '',
  ),
  Message(
    image: 'assets/images/doctor-2.png',
    icon: const Icon(Icons.more_vert_rounded),
    name: 'Jeff',
    time: '06:40 pm',
    unreadMessagesCount: '6',
    color: Colors.yellowAccent,
    fontColor: Colors.greenAccent,
    message: 'Dart makes my heart flutter',
    category: 'Challenge',
  ),
  Message(
    image: 'assets/images/medical-assistance-1.png',
    icon: const Icon(Icons.more_vert_rounded),
    name: 'Lisa Monroe',
    time: '11:40 am',
    unreadMessagesCount: '1',
    color: Colors.greenAccent,
    fontColor: Colors.greenAccent,
    message: 'Dart makes my heart flutter',
    category: '',
  ),
  Message(
    image: 'assets/images/scientist.png',
    icon: const Icon(Icons.more_vert_rounded),
    name: 'John Doe',
    time: '2:30 pm',
    unreadMessagesCount: '9',
    color: Colors.blueAccent,
    fontColor: Colors.greenAccent,
    message: 'Hello, how are you?',
    category: '',
  ),
];
