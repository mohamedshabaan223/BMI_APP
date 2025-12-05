import 'package:bmi_app/common/colors_manger.dart';
import 'package:flutter/material.dart';

class CustomHeight extends StatelessWidget {
  const CustomHeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(12),
        color: ColorsManger.gray,
      ),
      child: Column(
        spacing: 5,
        children: [
          Text('Height'),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '150',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: ColorsManger.white,
                  ),
                ),
                TextSpan(
                  text: 'cm',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: ColorsManger.white,
                  ),
                ),
              ],
            ),
          ),
          Slider(
            value: 0.5,
            onChanged: (value) {},
            inactiveColor: ColorsManger.white,
            activeColor: ColorsManger.pink,
          ),
        ],
      ),
    );
  }
}
