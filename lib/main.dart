// ignore_for_file: prefer_const_constructors
//*#06#*0000#*22880#
import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_routes.dart';
import 'package:flutter_application_1/provider/app_repo.dart';
import 'package:flutter_application_1/styles/app_colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<AppRepo>(
    create: (context) => AppRepo(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}
