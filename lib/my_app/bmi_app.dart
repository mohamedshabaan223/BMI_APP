import 'package:bmi_app/common/colors_manger.dart';
import 'package:bmi_app/ui/home_screen.dart';
import 'package:flutter/material.dart';

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: ColorsManger.backgroundColor,
      ),
    );
  }
}
