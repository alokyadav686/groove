import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groovo/onboarding_screen/controller/onboarding_controller.dart';
import 'package:groovo/utils/constants/colors.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.logoColor,
      body: Obx(
        ()=> Stack(
          children: [
            const Positioned(
              top: 40,
              left: 20,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color.fromARGB(128, 22, 80, 83),
              ),
            ),
            const Positioned(
              top: 100,
              right: 20,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color.fromARGB(128, 4, 129, 135),
              ),
            ),
            const Positioned(
              top: 180,
              left: 100,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Color.fromARGB(128, 14, 165, 173),
              ),
            ),
            Positioned(
              bottom: height * 0.30,
              left: 0,
              right: 0,
              child: Image.asset(
                "assets/images/img_girl.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
        
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                height: height * 0.32,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: const Text.rich(
                          TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              height: 1.5,
                            ),
                            children: [
                              TextSpan(text: "From the "),
                              TextSpan(
                                text: "latest",
                                style: TextStyle(
                                  color: AppColors.logoColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(text: " to the "),
                              TextSpan(
                                text: "greatest",
                                style: TextStyle(
                                  color: AppColors.logoColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: " hits, play your favorite tracks on ",
                              ),
                              TextSpan(
                                text: "groovo",
                                style: TextStyle(
                                  color: AppColors.logoColor,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(text: " now!"),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
        
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.logoColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () {
                    controller.startProgressAndNavigate();
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (controller.showProgress.value)
                      ProgressBarAnimation(
                        duration: const Duration(seconds: 2),
                        color: AppColors.logoColor,
                        backgroundColor: Colors.white,
                      ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
