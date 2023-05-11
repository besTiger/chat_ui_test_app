import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CustomLineIndicatorBottomNavbar(
      selectedColor: const Color(0xfff25276),
      // Modified selected color
      unSelectedColor: const Color(0xff06293e),
      // Modified unselected color
      backgroundColor: Colors.white,
      currentIndex: selectedIndex,
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
      onTap: onTap,
    );
  }
}
