import 'package:flutter/material.dart';
import 'package:kurs_sabak6_getx/app_constants/app_colors.dart';

class AppTextStyles {
  static const TextStyle numberTextStyle = TextStyle(
    fontSize: 44.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle titleTextStyle = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 34.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle resultTitle = TextStyle(
    fontSize: 54.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle resultSubTitle = TextStyle(
    color: AppColors.greenLight,
    fontSize: 34.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle resultNumber = TextStyle(
    fontSize: 84.0,
    fontWeight: FontWeight.bold,
  );
}
