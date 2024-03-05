import 'package:calculator_by_sakib3046/Components/uiColors.dart';
import 'package:flutter/material.dart';

class button extends StatelessWidget{
  final String buttonText;
  final VoidCallback onPress;
  var buttonColor;
  button({super.key, required this.buttonText,this.buttonColor,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: onPress,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: buttonColor,
          ),
          child: Center(child: Text(buttonText,style: TextStyle(color: blackColor))),
        ),
      ),
    );
  }
}
