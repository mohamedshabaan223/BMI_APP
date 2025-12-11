import 'package:bmi_app/common/colors_manger.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key, required this.icon , required this.heroTag , required this.keyValue , required this.onPressed});
  final IconData icon;
  final Key? keyValue;
  final Object? heroTag;
  final  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      key: keyValue,
      heroTag: heroTag,
      onPressed: onPressed,
      backgroundColor: ColorsManger.floatingActionButtonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(100),
      ),
      child: Icon(icon),
    );
  }
}
