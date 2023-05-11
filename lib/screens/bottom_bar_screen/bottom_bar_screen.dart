import 'package:chat_ui_test_app/screens/bottom_bar_screen/widgets/bottom_bar_widget.dart';
import 'package:flutter/material.dart';
import '../chat_screen/chat_screen.dart';
import '../more_screen/more_screen.dart';
import '../notifications_screen/notifications_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  BottomBarScreenState createState() => BottomBarScreenState();
}

class BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0; //default index

  final List<Widget> widgetOptions = [
     const ChatScreen(),
     const NotificationScreen(),
     const MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
