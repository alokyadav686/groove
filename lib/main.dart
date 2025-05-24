import 'package:flutter/material.dart';
import 'package:groovo/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:groovo/services/splash/splash_screen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNavBar(),
  ));
}