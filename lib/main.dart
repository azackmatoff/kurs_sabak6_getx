import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurs_sabak6_getx/app_constants/app_colors.dart';

import 'modules/home/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kurs3 Sabak6',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.bgColor,
      ),
      home: HomeScreen(),
    );
  }
}




/// MVC 
/// Model View Controller
/// Business Logic
/// OOP - Object Oriented Programming