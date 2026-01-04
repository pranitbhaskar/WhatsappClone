import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class  ChatsScreen extends StatelessWidget
{
  var arrContent=[
    {
      "image":"assets/images/elonmusk.png",
      "name":"Elon Musk",
      "lastmsg":"Radhe Radhe",
      "time":"05:00 am",
      "msg":"1"
      
    },
    {
      "image":"assets/images/billgates.png",
      "name":"Bill Gates",
      "lastmsg":"Radhe Radhe",
      "time":"05:00 am",
      "msg":"1"
      
    },
    {
      "image":"assets/images/ratantata.png",
      "name":"Ratan Tata",
      "lastmsg":"Radhe Radhe",
      "time":"05:00 am",
      "msg":"1"
      
    },
    {
      "image":"assets/images/ambani.png",
      "name":"Mukesh Ambani",
      "lastmsg":"Radhe Radhe",
      "time":"05:00 am",
      "msg":"1"
      
    },
    {
      "image":"assets/images/me.png",
      "name":"Pranit Bhaskar",
      "lastmsg":"Radhe Radhe",
      "time":"05:00 am",
      "msg":"1"
      
    },
    {
      "image":"assets/images/sundarpichai.png",
      "name":"Sundar Pichai",
      "lastmsg":"Radhe Radhe",
      "time":"05:00 am",
      "msg":"1"
      
    },
  ];
  @override
  Widget build(Object context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height:10),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index)
            {
              return ListTile(
                leading:CircleAvatar(
                  radius:25, 
                  backgroundImage:AssetImage(arrContent[index]["image"].toString())),
                title:UiHelper.customText(text:arrContent[index]["name"].toString(),height: 14),
                subtitle: UiHelper.customText(text:arrContent[index]["lastmsg"].toString(),height:13,color:Colors.grey),
                trailing:Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                  UiHelper.customText(text:arrContent[index]["time"].toString(),height:12,color:Colors.green),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius:10,
                    child:UiHelper.customText(text:arrContent[index]["msg"].toString(),height:12,color:Colors.white)
                  )
                ],
                )
              );
            },itemCount: arrContent.length,
            ),
          ),
        ],
      ),
      floatingActionButton:CircleAvatar(
        radius:25,
        backgroundColor:Colors.green,
        child: Icon(Icons.chat_sharp,color:Colors.white),
      )
    );
  }

}