// ignore_for_file: library_private_types_in_public_api, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:g5amst/constants/colors.dart';
import 'package:g5amst/views/home/explore_view.dart';
import 'package:g5amst/views/home/for_you.dart';
import 'package:g5amst/views/home/settings_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeView createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  int _currentPage = 1;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage, keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomBar(),
      body: PageView(
        controller: _pageController,
        children: [Explore(), ForYouView(), Settings()],
        onPageChanged: (int index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }

  CurvedNavigationBar _bottomBar() {
    return CurvedNavigationBar(
      index: _currentPage,
      color: AppColors.primaryColor,
      backgroundColor: AppColors.background,
      animationDuration: const Duration(milliseconds: 300),
      items: const <Widget>[
        Icon(
          Icons.auto_awesome_mosaic_rounded,
          size: 30,
          color: AppColors.text_dark,
        ),
        Icon(
          Icons.home,
          size: 30,
          color: AppColors.text_dark,
        ),
        Icon(
          Icons.settings,
          size: 30,
          color: AppColors.text_dark,
        ),
      ],
      onTap: (int index) {
        setState(() {
          _currentPage = index;
          _pageController!.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.ease);
        });
      },
    );
  }
}