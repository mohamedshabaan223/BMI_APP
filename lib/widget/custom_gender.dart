import 'package:bmi_app/common/colors_manger.dart';
import 'package:flutter/material.dart';

class CustomGender extends StatelessWidget {
  const CustomGender({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.isSelected = false,
  });
  final IconData icon;
  final String label;
  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isSelected ? ColorsManger.pink : ColorsManger.gray,
          ),
          child: Column(children: [Icon(icon, size: 96), Text(label)]),
        ),
      ),
    );
  }
}
