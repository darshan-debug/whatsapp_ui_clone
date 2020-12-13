import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/modals/chat_model.dart';


class ChatScreen extends StatefulWidget {
  

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder:(context,index){
        return Column(
          children:[
            Divider(height:10.0),
            ListTile(
              leading:CircleAvatar(
                backgroundColor: Colors.grey[50],
                foregroundColor: Theme.of(context).primaryColor,
               // backgroundImage: NetworkImage(dummyData[index].avatarUrl),
                child:ClipOval(child: Image.asset(dummyData[index].avatarSrc),)
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text(dummyData[index].name,style:TextStyle(fontWeight:FontWeight.bold,)),
                  Text(dummyData[index].time,style:TextStyle(color:Colors.grey,fontSize:14)),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top:5),
                child: Text(dummyData[index].message,style:TextStyle(color:Colors.grey,fontSize:14)),
              ),
            ),
          ],
        );
      }

      );
  }
}