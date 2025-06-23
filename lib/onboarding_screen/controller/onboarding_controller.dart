import 'dart:async';
import 'package:get/get.dart';
import 'package:groovo/SignIn/sign_in_screen.dart';

class OnboardingController extends GetxController {
  var showProgress = false.obs;

  void startProgressAndNavigate() {
    showProgress(true);

    Timer(const Duration(seconds: 2), () {
      Get.off(
        () => const SignInScreen(),
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 400),
      );
    });
  }
}
