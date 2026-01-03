import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/screens/chatscreen/chatscreen.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class ProfileScreen extends StatefulWidget{
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController=TextEditingController();

  File? pickedimage;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:Center(
        child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children:[
            SizedBox(height:60),
            UiHelper.customText(text:"Profile info",height:16,color:Colors.pink,fontweight:FontWeight.bold),
            SizedBox(height:20),
            UiHelper.customText(text:"Please provide your name and an optional",height:14),
            UiHelper.customText(text:"profile photo",height:14),
            SizedBox(height:20),

            GestureDetector(
            onTap:(){_openBottom(context);},
           child:pickedimage==null? CircleAvatar(
              radius: 70,
              backgroundColor: Colors.grey.shade200,
            child:Image.asset(
              "assets/images/photocam2.png",
              height:50,
              fit:BoxFit.cover
              ),
                ):CircleAvatar(
                  radius:70,
                  backgroundImage:FileImage(pickedimage!),
                ),
                ),
            SizedBox(height:30),
            Row(
             mainAxisAlignment: MainAxisAlignment.center,
               children:[SizedBox(
                width:250, 
                child:TextField(
                  keyboardType:TextInputType.name,
                 controller:nameController,
                 decoration:InputDecoration(
                  hintText:"Type your name here"
                 )
                )
                ),
                SizedBox(width:10),
                Image.asset("assets/images/smileemoji.png",height:60)]
                )
        ]
        ),
        ),
        floatingActionButton: UiHelper.customButton(buttonname:"Next",callback: (){
          // Navigator.push(context,MaterialPageRoute(builder:(context)=>ChatScreen()));
        }),
         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      
    );
  }

  _openBottom(BuildContext context)
  {
    return showModalBottomSheet(context: context, builder:(BuildContext context){
      return Container(
           height:200,
           width:200,
           child:Column(
              
            children:[
              SizedBox(height:20),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:[
                 IconButton( onPressed:() {
                  _pickImage(ImageSource.camera);
                 } ,
                 icon:Icon(Icons.camera_alt,size:70,color:Colors.grey)),
                 IconButton( onPressed:() {
                  _pickImage(ImageSource.gallery);
                 } ,
                 icon:Icon(Icons.image,size:70,color:Colors.grey)),

                ]
              )
            ]
           )
      );
    });
  }

    _pickImage(ImageSource imagesource)async{
     try{
        final photo=await ImagePicker().pickImage(source:imagesource);
        if(photo==null)return;
        final tempimage=File(photo.path);
       setState(() {
         pickedimage=tempimage;
       });
     }
     catch(ex){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(ex.toString())));
     }
    }
}
