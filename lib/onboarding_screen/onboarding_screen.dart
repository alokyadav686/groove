import 'package:flutter/material.dart';
import 'package:groovo/constants/colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.logoColor,
      body: Stack(
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

          Column(
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/img_girl.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 30,
                      ),
                      height: height*0.30,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text.rich(
                            TextSpan(
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                height: 1.5,
                              ),
                              children: [
                                TextSpan(text: "From the "),
                                TextSpan(
                                  text: "latest",
                                  style: TextStyle(
                                    color: Color(0xFF48D1D7),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(text: " to the "),
                                TextSpan(
                                  text: "greatest",
                                  style: TextStyle(
                                    color: Color(0xFF48D1D7),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: " hits, play your favorite tracks on ",
                                ),
                                TextSpan(
                                  text: "musium",
                                  style: TextStyle(
                                    color: Color(0xFF48D1D7),
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                TextSpan(text: " now!"),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 20,
                                height: 4,
                                color: Color(0xFF48D1D7),
                              ),
                              const SizedBox(width: 4),
                              Container(
                                width: 8,
                                height: 4,
                                color: Colors.grey[700],
                              ),
                              const SizedBox(width: 4),
                              Container(
                                width: 8,
                                height: 4,
                                color: Colors.grey[700],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xFF48D1D7),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextButton(
                              onPressed: () {
                                // Navigate to next screen
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
