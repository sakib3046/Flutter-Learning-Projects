import 'package:flutter/material.dart';
import 'package:personal_photo_card/home_page.dart';

void main()=>runApp(
  MaterialApp(
    theme: ThemeData(fontFamily: 'Roboto'),
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  )
);