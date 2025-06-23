import 'package:get/get.dart';
import 'package:groovo/SignIn/login_screen.dart';
import 'package:groovo/signUp/sign_up_screen.dart';

class SignInController extends GetxController{
  void goToLoginPage(){
    Get.to(()=>LoginScreen(),
    transition: Transition.rightToLeftWithFade,
    duration: Duration(milliseconds: 400));
  }
  void goToSignUpPage(){
    Get.to(()=>SignUpScreen(),
    transition: Transition.rightToLeftWithFade,
    duration: Duration(milliseconds: 400));
  }
}