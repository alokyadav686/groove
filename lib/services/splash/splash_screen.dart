import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groovo/services/splash/controller/splash_controller.dart';
import 'package:groovo/utils/constants/colors.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 14),
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
