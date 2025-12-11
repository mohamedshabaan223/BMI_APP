import 'package:bmi_app/common/colors_manger.dart';
import 'package:bmi_app/widget/custom_floating_action_button.dart';
import 'package:flutter/material.dart';

class CustomCounter extends StatelessWidget {
  const CustomCounter({
    super.key,
    required this.label,
    required this.value,
    required this.decrement,
    required this.increment,
  });
  final String label;
  final int value;
  final void Function()? decrement;
  final void Function()? increment;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorsManger.gray,
        ),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 5),
            Text(
              value.toString(),
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: ColorsManger.white,
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomFloatingActionButton(
                  icon: Icons.remove,
                  keyValue: UniqueKey(),
                  heroTag: '$label 1 ',
                  onPressed: decrement,
                ),
                CustomFloatingActionButton(
                  icon: Icons.add,
                  keyValue: UniqueKey(),
                  heroTag: '$label 2 ',
                  onPressed: increment,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
