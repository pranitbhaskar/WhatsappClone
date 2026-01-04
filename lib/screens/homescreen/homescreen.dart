import 'package:flutter/material.dart';
import 'package:whatsapp/screens/homescreen/callsscreen.dart';
import 'package:whatsapp/screens/homescreen/camerascreen.dart';
import 'package:whatsapp/screens/homescreen/chatsscreen.dart';
import 'package:whatsapp/screens/homescreen/statusscreen.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class HomeScreen extends StatelessWidget
{
   @override
   Widget build(BuildContext context)
   {
    return DefaultTabController(
     length: 4,
     initialIndex: 1,
     child:  Scaffold(
      appBar:AppBar(
        title:UiHelper.customText(text:"WhatsApp",height:20,color:Colors.white),
        actions:[
          IconButton(icon:Icon(Icons.search),onPressed: (){}),
          PopupMenuButton(itemBuilder: (BuildContext context)
          {
            return [
            PopupMenuItem(child: Text("New Group"),value:"New Group"),
            PopupMenuItem(child: Text("New Broadcast"),value:"New Broadcast"),
            PopupMenuItem(child: Text("WhatsApp Web"),value:"WhatsApp Web"),
            PopupMenuItem(child: Text("Starred Messages"),value:"Starred Messages"),
            PopupMenuItem(child: Text("Settings"),value:"Settings"),
            ];
          })
        ],
        bottom:TabBar(tabs: [
          Tab(icon:Icon(Icons.camera_alt)),
          Tab(text:"CHATS"),
          Tab(text:"STATUS"),
          Tab(text:"CALLS"),
          // Tab()
        ],indicatorColor: Colors.white,),
        toolbarHeight:80,
      ),
      body:TabBarView(children: [
        
           CameraScreen(),
           ChatsScreen(),
           StatusScreen(),
           CallsScreen(),
      ],)
    )
    );
   }
}