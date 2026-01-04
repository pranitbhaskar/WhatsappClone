import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children:[
            SizedBox(width:30),
              UiHelper.customText(text:"Status",height:18,)
            ]
          ),
          // SizedBox(height:10),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left:5),
              child: Stack(
                children:[
                   CircleAvatar(
                  radius:25,
                  backgroundColor: Colors.grey,
                  child:Icon(Icons.person,color:Colors.white),
                ),
                Positioned(
                  bottom:0,
                  right:0,
                  child: CircleAvatar(
                    radius:10,
                    backgroundColor:Colors.green,
                    child:Center(
                      child:Icon(Icons.add,color:Colors.white,size:15)
                    )
                  ),
                )
                ]
              ),
            ),
            title:UiHelper.customText(text:"My Status",height:18,),
            subtitle:UiHelper.customText(text:"Tap to add status update",height:14),
          ),
          SizedBox(height:20),
          Padding(
            padding: const EdgeInsets.only(left:10),
            child: Row(
              children: [
                UiHelper.customText(text:"Recent Updates", height:18),
                IconButton(onPressed: (){}, icon:Icon(Icons.arrow_drop_down_circle,color:Colors.grey))
              ],
            ),
          )
        ],
      ));
  }
} 
