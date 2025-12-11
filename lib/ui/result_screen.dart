import 'package:bmi_app/common/colors_manger.dart';
import 'package:bmi_app/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key , required this.bmiValue});
 final double bmiValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your Result' , 
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: ColorsManger.white,
            ),),
            SizedBox(height: 10,),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 40 , horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: ColorsManger.gray,
                ),
                child: Column(
                  spacing: 20,
                  children: [
                  
                  Text(viewStatus() , style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: ColorsManger.green,
                  ),),
                  Text(bmiValue.toStringAsFixed(2) , style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.w700,
                    color: ColorsManger.white,
                  ),),
                  Text(viewDescraption() , style: TextStyle(color: ColorsManger.white),textAlign: TextAlign.center,)
                ],),
              ),
            )
          ],
        ),
      ),
    );
  }
 String viewStatus(){
    if(bmiValue < 18.4){
      return 'UnderWeight';
    }else if(bmiValue > 18.5 && bmiValue < 24.9){
      return 'Normal';
    }else if(bmiValue > 25.0 && bmiValue < 39.9){
      return 'OverWeight';
    }else{
      return 'Obese';
    }
  }
  String viewDescraption(){
    if(bmiValue < 18.4){
      return 'You are underweight. Consider a balanced diet to gain healthy weight.';
    }else if(bmiValue > 18.5 && bmiValue < 24.9){
      return 'Your BMI is normal. Keep maintaining a healthy lifestyle!';
    }else if(bmiValue > 25.0 && bmiValue < 39.9){
      return 'You are overweight. Regular exercise and a balanced diet may help.';
    }else{
      return 'Your BMI is in the obese range. Consider seeking medical or nutritional advice.';
    }
  }
}