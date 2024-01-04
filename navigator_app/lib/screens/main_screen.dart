import 'package:flutter/material.dart';
import 'package:navigator_app/screens/community/community_screen.dart';
import 'package:navigator_app/screens/home_screen.dart';
import 'package:navigator_app/screens/user/user_screem.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // 선택된 화면
  Widget _selectedScreen = const HomeScreen();

  //선택된 index
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0)
        _selectedScreen = HomeScreen();
      else if (_selectedIndex == 1)
        _selectedScreen = UserScreen();
      else if (_selectedIndex == 2) _selectedScreen = CommunityScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('메인 화면')),
      body: _selectedScreen,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'user'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'community'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTap,
      ),
    );
  }
}
