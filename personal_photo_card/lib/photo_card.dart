import 'package:flutter/material.dart';

Widget photoCard(image,text){
 return AspectRatio(
     aspectRatio: 2.5/3,
   child: Container(
     margin: EdgeInsets.only(right: 15),
     decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.circular(20),
       image: DecorationImage(
       fit: BoxFit.cover,
       image: AssetImage(image))
     ),
     child: Container(
       child: Padding(
         padding: EdgeInsets.only(left: 15,bottom: 10),
           child: Align(
             alignment: Alignment.bottomLeft,
               child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         gradient: LinearGradient(
           begin: Alignment.bottomRight,
           stops: [0.1,0.9],
           colors:
         [
           Colors.black.withOpacity(0.9),
           Colors.black.withOpacity(0.1),
         ],
         )
       ),
     ),
   ),
 );
}