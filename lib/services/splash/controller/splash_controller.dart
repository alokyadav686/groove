import 'dart:async';
import 'package:get/get.dart';
import 'package:groovo/onboarding_screen/onboarding_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 2), () {
      Get.off(() => const OnboardingScreen(),
      transition: Transition.fadeIn,
      duration: const Duration(milliseconds: 400));
    });
  }
}
