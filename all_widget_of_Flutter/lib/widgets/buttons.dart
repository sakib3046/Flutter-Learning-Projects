import 'package:flutter/material.dart';
class buttons extends StatelessWidget {
  const buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
            child: Text("Text Button"),
            onPressed: (){print("Text Button Prassed");},
            onLongPress: (){print("Text Button Long Press ");},
          ),
            ElevatedButton(onPressed: (){
              print("Elevated Button Prassed");
              },
              onLongPress: (){print("Elevated Button Prassed");},
                child: Text("Elevated Button"),
            ),
            OutlinedButton(
              child: Text("OutlinedButton"),
              onPressed: (){print("OutlinedButton Prassed");},
              onLongPress: (){print("OutlinedButton Long Press ");},
            ),

          ]
        ),
      ),
    );
  }
}
