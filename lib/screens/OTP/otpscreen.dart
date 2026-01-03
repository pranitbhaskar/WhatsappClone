import 'package:flutter/material.dart';
import 'package:whatsapp/screens/Pofile/profilescreen.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class OTPScreen extends StatelessWidget
{
  String phonenumber;
  TextEditingController otp1controller=TextEditingController();
  TextEditingController otp2controller=TextEditingController();
  TextEditingController otp3controller=TextEditingController();
  TextEditingController otp4controller=TextEditingController();
  TextEditingController otp5controller=TextEditingController();
  TextEditingController otp6controller=TextEditingController();
  OTPScreen({required this.phonenumber});
 
  @override
 
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body:Center(
        child:Column(
          children:[
           SizedBox(height:80),
            UiHelper.customText(
              text: " Verifying your number ",
              height:20,
              color:Colors.green,
              fontweight: FontWeight.bold
            ),
            SizedBox(height:30),
            UiHelper.customText(
              text:"You've tried to register +91${phonenumber}",
              height:14,
            ),
            UiHelper.customText(
              text:"recently.Wait before requesting an sms or a call",
              height:14
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
            UiHelper.customText(text:"with your code.",height:14 ),
            GestureDetector(onTap:(){}, child:UiHelper.customText(text:"Wrong Number?",height:14,color:Colors.blue )),
            ]
            ),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                UiHelper.customContainer(otp1controller),
                SizedBox(width:10),
                UiHelper.customContainer(otp2controller),
                SizedBox(width:10),
                UiHelper.customContainer(otp3controller),
                SizedBox(width:10),
                UiHelper.customContainer(otp4controller),
                SizedBox(width:10),
                UiHelper.customContainer(otp5controller),
                SizedBox(width:10),
                UiHelper.customContainer(otp6controller),
              ]
          ),
          SizedBox(height:30),
         GestureDetector(onTap:(){},child: UiHelper.customText(text:"Didn't receive code?",height:14,color:Colors.blue))

          ]
        )
      ),
      floatingActionButton:UiHelper.customButton(callback:(){
        Navigator.push(context,MaterialPageRoute(builder:(context)=>ProfileScreen()));
      },buttonname:"Next"),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
            );
        
      
    
  }
}