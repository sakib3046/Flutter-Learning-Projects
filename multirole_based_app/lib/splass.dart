import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multirole_based_app/home.dart';

import 'login.dart';



class splass extends StatefulWidget {
  const splass({super.key});


  @override
  State<splass> createState() => _splassState();
}
class _splassState extends State<splass> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, 
        MaterialPageRoute(builder: (context)=>login_screen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(image: NetworkImage("https://images.pexels.com/photos/3605420/pexels-photo-3605420.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
    );
  }
}
