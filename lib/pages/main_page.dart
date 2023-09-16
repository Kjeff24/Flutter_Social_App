// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_icons.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icHome), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icFavorite),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icMessage), label: 'Plus'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icMessage),
              label: 'Message'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icUser), label: 'User'),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('favourite'),
    ),
    Center(
      child: Text('Plus'),
    ),
    Center(
      child: Text('message'),
    ),
    ProfilePage(),
  ];
}
