import 'package:calculator_by_sakib3046/Components/button.dart';
import 'package:flutter/material.dart';
import 'package:calculator_by_sakib3046/Components/uiColors.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(child: button(buttonText: 'Hello',buttonColor: redColor,onPress: (){print('Button Pressed');},)),
      ),
    );
  }
}


