import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random= Random();
  var x=0;
  var y=5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title:const Center(child: Text('Lottery App',style: TextStyle(color: Colors.black54),)),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            x==y ? const Text('Win'):const Text('Lose'),
            const SizedBox(height: 20,),
            x==y?const Icon(Icons.done,color: Colors.lightGreenAccent):const Icon(Icons.error,color: Colors.deepOrange),
            const SizedBox(height: 20,),
            Center(child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Center(child: Text(x.toString())),
            ),
            )
          ],
        ),
        floatingActionButton:FloatingActionButton(
            onPressed: (){
              x=random.nextInt(10);
              setState(() {

              });
            },
          child: Icon(Icons.refresh_rounded),
          backgroundColor: Colors.lightGreenAccent,
        ),
      ),
    );
  }
}


