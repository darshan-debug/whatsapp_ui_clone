import 'package:flutter/material.dart';

import 'pages/calls_screen.dart';
import 'pages/camera_screen.dart';
import 'pages/chat_screen.dart';
import 'pages/status_screen.dart';

class HomePage extends StatefulWidget {
  final  cameras;
  HomePage(this.cameras);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController _tabController;
  bool showFab=true;


  @override
  void initState() {
    super.initState();
    _tabController=TabController(vsync: this,length: 4,initialIndex: 1);
    ////// VVV IMP CONCEPT.....HOW TO ADD A LISTENER
    _tabController.addListener(() { 
      if(_tabController.index==1){
        showFab=true;          
      }
      else{
        showFab=false;            
      }
      setState(() { });  
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("WhatsApp",style: TextStyle(fontSize: 23),),
        elevation: 0.7,
        bottom:TabBar(
        controller: _tabController,
        indicatorColor:Colors.white ,
        tabs: [
          Tab(
          icon: Icon(Icons.camera_alt),            
            ),
            Tab(text: "CHATS",),
            Tab(text: "STATUS",),
            Tab(text: "CALLS",),   
        ],
        ) ,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed:( ){}),
          SizedBox(width:2),
          PopupMenuButton<String>(
            onSelected:(value){} ,
            itemBuilder: (context){
              return ["Business tools","new Group","New Broadcast","Labels","WhatsApp Web","Starred Messages","Settings"].map((value){
                return PopupMenuItem(
                  value: value,
                  child: Text(value+"   "),
                  );
              }                
              ).toList();
            },
            ),
                    ],
      ),
      body:TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(widget.cameras),
          ChatScreen(),
          StatusScreen(),
          CallsScreen()


        ],
        ),
      floatingActionButton:showFab? FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        onPressed: (){},
        child:Icon(Icons.message,
        color: Colors.white,        
      ),
    ):null,
    );
  }}