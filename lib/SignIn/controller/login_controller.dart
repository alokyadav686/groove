import 'package:get/get.dart';
import 'package:groovo/SignIn/sign_in_screen.dart';
import 'package:groovo/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:groovo/signUp/sign_up_screen.dart';

class LoginController extends GetxController {
  var rememberMe = false.obs;
  var obscurePassword = true.obs;

  void togglePasswordVisibility() {
    obscurePassword(!obscurePassword.value);
  }

  void toggleRememberMe(bool value) {
    rememberMe(value);
  }

  void goToSignIn() {
    Get.offAll(() => SignInScreen(),
    transition: Transition.leftToRightWithFade,
    duration: Duration(milliseconds: 400));
  }

  void goToSignUp() {
    Get.offAll(() => SignUpScreen(),
    transition: Transition.rightToLeftWithFade,
    duration: Duration(milliseconds: 400));
  }

  void logIn() {
    Get.offAll(() => BottomNavBar(),
    transition: Transition.rightToLeftWithFade,
    duration: Duration(milliseconds: 400));
  }
}
