import 'package:flutter/material.dart';
import 'package:groovo/bottom_nav_bar/custom_nav.dart';
import 'package:groovo/views/homeScreen/home_screen.dart';
import 'package:groovo/views/libraryScreen/library_screen.dart';
import 'package:groovo/views/searchScreen/search_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  
  int _selectedIndex =0;

  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    LibraryScreen(),
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
      bottomNavigationBar: CustomNav(
        selectedIndex: _selectedIndex,
        onItemSelected: _onItemTapped,
      ),
    );
  }
}
