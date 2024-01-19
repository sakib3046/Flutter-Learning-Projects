import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child:Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp',style: TextStyle(color: Colors.white),),
            bottom: TabBar(tabs: [
              Tab(child: Icon(Icons.people,)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Updates')),
              Tab(child: Text('Calls')),
            ],indicatorColor: Colors.white,labelColor: Colors.white,unselectedLabelColor: Colors.white.withOpacity(.75)),
            actions: [
              Icon(Icons.camera_alt_outlined,color: Colors.white),
              SizedBox(width: 15,),
              Icon(Icons.search,color: Colors.white),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert,color: Colors.white),
                  itemBuilder: (context,)=>[
                    PopupMenuItem(child: Text('New Group')),
                    PopupMenuItem(child: Text('New broadcast')),
                    PopupMenuItem(child: Text('Linked devices')),
                    PopupMenuItem(child: Text('Starred messages')),
                    PopupMenuItem(child: Text('Settings')),
                  ],
              )],
            backgroundColor: Colors.teal,
          ),
          body: TabBarView(
            children: [
              Text('This full UI desined for Practicing Flutter. This Tab isn\'t necessary',style: TextStyle(fontSize: 20),),
              ListView.builder(
                itemCount: 5,
                  itemBuilder:
              (context,index){
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://imgv3.fotor.com/images/gallery/american-anime-stule-naked-man-avatar.jpg'),
                  ),
                  title: Text('Md Sakib Hasan'),
                  subtitle: Text('Hello,I am Ashik'),
                  trailing: Text('6:45 PM'),
                );
              }
              ),
              Text('This full UI desined for Practicing Flutter. This Tab isn\'t necessary',style: TextStyle(fontSize: 20)),
              Text('This full UI desined for Practicing Flutter. This Tab isn\'t necessary',style: TextStyle(fontSize: 20)),
            ],
          ),
        )
    );
  }
}
