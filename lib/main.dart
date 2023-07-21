import 'package:flutter/material.dart';
import 'package:g5amst/ui/routes.dart';
import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.mainColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
      ),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
