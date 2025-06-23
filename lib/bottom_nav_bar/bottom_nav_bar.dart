import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groovo/bottom_nav_bar/controller/bottom_nav_controller.dart';
import 'package:groovo/bottom_nav_bar/custom_nav.dart';
import 'package:groovo/views/homeScreen/home_screen.dart';
import 'package:groovo/views/libraryScreen/library_screen.dart';
import 'package:groovo/views/searchScreen/search_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final BottomNavController controller = Get.put(BottomNavController());

  final List<Widget> screens = [HomeScreen(), SearchScreen(), LibraryScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => CustomNav(
          selectedIndex: controller.selectedIndex.value,
          onItemSelected: controller.onItemTapped,
        ),
      ),
    );
  }
}
