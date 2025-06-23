import 'package:flutter/material.dart';
import 'package:groovo/services/splash/splash_screen.dart';
import 'package:groovo/utils/constants/theme.dart';
import 'package:get/get.dart';
void main(){
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    themeMode: ThemeMode.system,
    theme: GAppTheme.lightTheme,
    darkTheme: GAppTheme.darkTheme,
    
    home: SplashScreen(),
  ));
}

