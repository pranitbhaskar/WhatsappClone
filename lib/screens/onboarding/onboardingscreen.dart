import 'package:flutter/material.dart';
import 'package:whatsapp/screens/login/loginpage.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class OnBoardingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsappcircle.png"),
            SizedBox(height:20),
            UiHelper.customText(text:"Welcome to WhatsApp",height:20,),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                UiHelper.customText(text: "Read out ", height:14),
                UiHelper.customText(text: "Privacy Policy", height: 14,color:Colors.blue),
                UiHelper.customText(text:"Tap ''Agree and Continue''",height:14), 

                ]  
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(text:"to accept the ",height:14),
                UiHelper.customText(text:"Terms of Service",height:14,color: Colors.blue)
              ],
            )
          ],
        ) ,),

      
      floatingActionButton: UiHelper.customButton(callback:(){
        Navigator.push(context,MaterialPageRoute(builder:(context)=>LoginPage()));
      }, buttonname:"Agree and Continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
    
  }
}