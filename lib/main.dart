import 'package:flutter/material.dart';
import 'package:groovo/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:groovo/services/splash/splash_screen.dart';
import 'package:groovo/utils/constants/theme.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    themeMode: ThemeMode.system,
    theme: GAppTheme.lightTheme,
    darkTheme: GAppTheme.darkTheme,
    
    home: SplashScreen(),
  ));
}

