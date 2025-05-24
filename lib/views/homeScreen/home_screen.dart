import 'package:flutter/material.dart';
import 'package:groovo/constants/colors.dart';
import 'package:groovo/views/homeScreen/widgets/continue_listening.dart';
import 'package:groovo/views/homeScreen/widgets/recent_listening.dart';
import 'package:groovo/views/homeScreen/widgets/top_bar.dart';
import 'package:groovo/views/homeScreen/widgets/top_mixes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primaryColor,
        title: TopBar(),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          children: [
            
            const SizedBox(height: 20),
            Text(
              "Continue Listening",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            ContinueListening(),
            const SizedBox(height: 20),
            Text(
              "Your Top Mixes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            TopMixes(),
            const SizedBox(height: 20),
            Text(
              "Based on your recent listening",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            RecentListening(),
            const SizedBox(height: 10),
            RecentListening(),
          ],
        ),
      ),
    );
  }
}
