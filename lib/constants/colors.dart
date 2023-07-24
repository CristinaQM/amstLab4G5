// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AppColors {
  static const MaterialColor mainColor = MaterialColor(
    0xFFf9acbb,
    <int, Color>{
      50: Color(0xFFf9acbb),
      100: Color(0xFFf9acbb),
      200: Color(0xFFf9acbb),
      300: Color(0xFFf9acbb),
      400: Color(0xFFf9acbb),
      500: Color(0xFFf9acbb),
      600: Color(0xFFf9acbb),
      700: Color(0xFFf9acbb),
      800: Color(0xFFf9acbb),
      900: Color(0xFFf9acbb),
    },
  );

  //static const PrimaryColor = Color(0xFF0C4B8D);
  static const primaryColor = Color(0xFF0f7e9b);

  static const Color yellow = Color(0xFFeeeeb1);
  static const Color blue = Color(0xFF0f7e9b);
  static const Color skyblue = Color(0xFF92d7ef);
  static const Color pink = Color(0xFFf9acbb);
  static const Color background = Color(0xFFe4e0dc);

  static const Color text_light = Colors.black87;
  static const Color text_dark = Colors.white;

  // Shimmer Colors
  static final Color shimmerBackground = Colors.grey.shade300;
  static final Color shimmerBaseColor = Colors.grey.shade300;
  static final Color shimmerHighlightColor = Colors.grey.shade100;
}
