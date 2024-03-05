import 'package:flutter/material.dart';
import 'photo_card.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(244,243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              print("Menu Button Clicked");
            },
            icon: const Icon(Icons.menu,color: Colors.black87)
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Md Sakib Hasan",style: TextStyle(color: Colors.black87,fontSize: 25),),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Photo Cards",style: TextStyle(color: Colors.black,fontSize: 40),),
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,color: Colors.black87,),
                        hintText: "Search a photo",
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 15)
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                const SizedBox(height: 15,),
                const Text("Hello, Sakib!!!",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      photoCard('assets/images/one.png', 'Poster one'),
                      photoCard('assets/images/two.png','Poster two'),
                      photoCard('assets/images/two.png','Poster three'),
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      ),

    );
  }
}

