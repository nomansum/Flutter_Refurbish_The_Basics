import 'package:demo_project/login_page.dart';
import 'package:demo_project/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            fontFamily: 'Urbanist',
            scaffoldBackgroundColor: AppColors.background),
        home: LoginPage());
  }
}
