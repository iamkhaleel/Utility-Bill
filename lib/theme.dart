import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFAADE87);
  static const Color secondary = Color(0xFFADDCCA);
  static const Color background = Color(0xFFF7F8F3);
  static const Color accent = Color(0xFFAADD87);
}

class AppTextStyles {
  static const TextStyle heading1 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static const TextStyle body1 = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static const TextStyle body2 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );
}

final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: AppColors.primary, // Use backgroundColor instead of primary
  foregroundColor: Colors.white, // Use foregroundColor instead of onPrimary
  textStyle: AppTextStyles.heading3,
);

final ButtonStyle secondaryButtonStyle = ElevatedButton.styleFrom(
  backgroundColor:
      AppColors.secondary, // Use backgroundColor instead of primary
  foregroundColor:
      AppColors.primary, // Use foregroundColor instead of onPrimary
  textStyle: AppTextStyles.body1,
);
