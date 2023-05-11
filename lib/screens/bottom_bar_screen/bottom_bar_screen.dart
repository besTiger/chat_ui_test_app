import 'package:flutter/material.dart';
import '../chat_screen/chat_screen.dart';
import '../more_screen/more_screen.dart';
import '../notifications_screen/notifications_screen.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

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
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: const Color(0xfff25276),
        // Modified selected color
        unSelectedColor: const Color(0xff06293e),
        // Modified unselected color
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        unselectedIconSize: 28,
        selectedIconSize: 33,
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Top,
        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'Chat',
            icon: Icons.wechat,
          ),
          CustomBottomBarItems(
            label: 'Notifications',
            icon: Icons.notifications_none,
          ),
          CustomBottomBarItems(
            label: 'More',
            icon: Icons.more_horiz,
          ),
        ],
        onTap: _onItemTapped, // Call the function here
      ),
    );
  }
}
