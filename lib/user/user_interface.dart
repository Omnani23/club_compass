import 'package:club_compass/search/search_screen.dart';
import 'package:club_compass/user/user_homescreen.dart';
import 'package:club_compass/user/user_profilescreen.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(14.0),
        topRight: Radius.circular(14.0),
        bottomLeft: Radius.circular(14.0),
        bottomRight: Radius.circular(14.0),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.orange,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        fixedColor: Colors.white,
        onTap: onTap,
        showSelectedLabels: false, // Hide selected item labels
        showUnselectedLabels: false, // Hide unselected item labels
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
        ],
      ),
    );
  }
}

class UserInterface extends StatefulWidget {
  const UserInterface({super.key});

  @override
  State<UserInterface> createState() => _UserInterfaceState();
}

class _UserInterfaceState extends State<UserInterface> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    UserHomeScreen(),
    SearchScreen(),
    UserProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      // backgroundColor: Colors.white.withOpacity(0),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 15,
        ), // 15dp margin on all sides
        child: CustomBottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
