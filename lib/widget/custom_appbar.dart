import 'package:bmi_app/common/colors_manger.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManger.appBarColor,
      centerTitle: true,
      title: Text(
        'BMI Calculator',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: ColorsManger.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
