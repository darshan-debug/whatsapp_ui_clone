import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/pages/story_page_view.dart';


class StatusScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.grey[300],
      child:Column(
        
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Card(
            color:Color(0xfff2f2f2),
            elevation: 0.0,
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading:Stack(
                  children:[
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[50],
                      //backgroundImage: NetworkImage(""),  
                      child: ClipOval(child: Image.asset("assets/unknown_person.JPG",fit: BoxFit.cover,  )),                    
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 1.0,                      
                      child: Container(
                        height:20,
                        width:20,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle
                        ),
                        child:Icon(
                          Icons.add,
                          color:Colors.white,
                          size:15,
                        ),

                      )
                      )
                  ]
                ),
                title: Text("My Status",style:TextStyle(fontWeight:FontWeight.bold)),
                subtitle: Text("Tap to add status updates"),
              ),
            )


          ),
          
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("     Viewed Updates",style:TextStyle(fontWeight:FontWeight.bold,color: Colors.grey)),
          ),
          Expanded(            
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.white,
              child: ListView(
                children: [
                  ListTile(
                leading:Stack(
                  children:[
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      //backgroundImage: NetworkImage(""),  
                      child: ClipOval(child: Image.asset("assets/unknown_person.JPG",fit: BoxFit.cover,)),                    
                    ),
                   
                  ]
                ),
                title: Text("Home-Vodafone2",style:TextStyle(fontWeight:FontWeight.bold)),
                subtitle: Text("Today, 20:16 PM"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return StoryPageView();}));
                },
              ),

                ],
              ),
            )
          )


        ],


      )
    );
  }
}