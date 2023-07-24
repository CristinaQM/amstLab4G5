// ignore_for_file: library_private_types_in_public_api, sized_box_for_whitespace

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:g5amst/constants/colors.dart';
import 'package:g5amst/utils/util.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  _SplashView createState() => _SplashView();
}

class _SplashView extends State<SplashView> {
  Timer? _delaySplash;

  @override
  void initState() {
    super.initState();
    _delaySplash = Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed("/login");
    });
  }

  @override
  void dispose() {
    super.dispose();
    _delaySplash!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: Util.sizeScreen(context: context).width * 0.40,
              height: Util.sizeScreen(context: context).width * 0.40,
              child: const Icon(
                Icons.cake,
                color: AppColors.text_dark,
                size: 150,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "AMST LABORATORIO 05!",
              style: TextStyle(fontSize: 32, color: AppColors.text_dark, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
