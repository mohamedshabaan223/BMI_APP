import 'package:bmi_app/common/colors_manger.dart';
import 'package:bmi_app/widget/custom_appbar.dart';
import 'package:bmi_app/widget/custom_counter.dart';
import 'package:bmi_app/widget/custom_gender.dart';
import 'package:bmi_app/widget/custom_height.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  double height = 0.0;
  int weight = 30;
  int age = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                CustomGender(
                  icon: Icons.male,
                  label: 'Male',
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  isSelected: isMale,
                ),
                SizedBox(width: 10),
                CustomGender(
                  icon: Icons.female,
                  label: 'Female',
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  isSelected: !isMale,
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomHeight(heihgt: height,
            onChanged: (value) {
              setState(() {
                height = value;
              });
              
            },),
            SizedBox(height: 10),
            Row(
              children: [
                CustomCounter(label: 'Weight',
                 value: weight,
                 decrement: () {
                   if(weight > 1 ){
                   setState(() {
              weight--;       
              
                   });
                   }
                 },
                 increment: () {
                  setState(() {
                     weight++;
                  });
                 },
                 ),
                SizedBox(width: 15),
                CustomCounter(label: 'Age',
                 value: age,
                 increment: () {
                   setState(() {
                     age++;
                   });
                 },
                 decrement: () {
                   if (age > 1) {
                    setState(() {
                      age--;
                    });
                   }
                 },),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          
        },
        child: Container(
          alignment: Alignment.center,
          height: 55,
          decoration: BoxDecoration(
            color: ColorsManger.pink,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
          child: Text(
            'Calculate',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: ColorsManger.white,
            ),
          ),
        ),
      ),
    );
  }
}
