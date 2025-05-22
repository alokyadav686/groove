import 'dart:async';

import 'package:flutter/material.dart';
import 'package:groovo/constants/colors.dart';
import 'package:groovo/onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>OnboardingScreen()));

    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/logo.png"),
            SizedBox(height: 14),
            Text(
              "Groovo",
              style: TextStyle(
                fontSize: 36,
                color: AppColors.logoColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
