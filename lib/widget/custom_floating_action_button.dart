import 'package:bmi_app/common/colors_manger.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      onPressed: () {},
      backgroundColor: ColorsManger.floatingActionButtonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(100),
      ),
      child: Icon(icon),
    );
  }
}
