import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groovo/SignIn/controller/sign_in_controller.dart';
import 'package:get/get.dart';
import 'package:groovo/utils/constants/colors.dart';
import 'package:groovo/SignIn/widget/socialLoginButton.dart';
import 'package:flutter/gestures.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final SignInController controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png', width: 150, height: 150),
                const SizedBox(height: 40),

                const Text(
                  "Let’s get you in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),

                SocialLoginButton(
                  icon: FontAwesomeIcons.google,
                  text: "Continue with Google",
                ),

                const SizedBox(height: 16),

                SocialLoginButton(
                  icon: FontAwesomeIcons.facebookF,
                  text: "Continue with Facebook",
                ),

                const SizedBox(height: 16),

                SocialLoginButton(
                  icon: FontAwesomeIcons.apple,
                  text: "Continue with Apple",
                ),

                const SizedBox(height: 30),

                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.white)),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("or", style: TextStyle(color: Colors.white)),
                    ),
                    Expanded(child: Divider(color: Colors.white)),
                  ],
                ),
                const SizedBox(height: 20),

                InkWell(
                  onTap: controller.goToLoginPage,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                      color: AppColors.logoColor,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.cyanAccent.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Log in with a password",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.white70),
                    children: [
                      const TextSpan(text: "Don’t have an account? "),
                      TextSpan(
                        text: "Sign Up",
                        style: const TextStyle(
                          color: AppColors.logoColor,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                controller.goToSignUpPage();
                              },
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
