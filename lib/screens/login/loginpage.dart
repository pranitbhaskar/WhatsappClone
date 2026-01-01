import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage>createState()=>_LoginPageState();
}
class _LoginPageState extends State<LoginPage>{
  TextEditingController phoneController=TextEditingController();
  String selectedcountry="India";
  List<String>countries=[
  "America",
  "Africa",
  "German",
  "Italy",
  ];
  @override
    Widget build(BuildContext context)
    {
             return Scaffold(
             body:Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height:80),
                  Center(
                    child:UiHelper.customText(text:"Enter your Phone number",height:16,color:Colors.green,fontweight: FontWeight.bold),
                    ),
                    SizedBox(height:30),
                   
                      UiHelper.customText(text:"Whatsapp will need to verify your phone", height: 14),
                      UiHelper.customText(text:"number.Carrier charges may apply", height: 14),
                      UiHelper.customText(text:"What's my number?",color:Colors.blue, height: 14),

                    SizedBox(height:50),
                  Padding( 
                    padding:const EdgeInsets.only(left:50,right:50),
                    child:DropdownButtonFormField(items: countries.map((String country)
                   {
                    return DropdownMenuItem(
                      child:Text(country.toString()),
                      value:country
                      );
                   }).toList(),
                    onChanged: (value){
                      setState((){
                      selectedcountry=value!;
                    });

                   },decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                    )
                   ),
                   )
                   ),
                   SizedBox(height:20),
                   Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      SizedBox(width:50,
                    child: TextField(
                    keyboardType:TextInputType.number,
                    decoration:InputDecoration(
                      hintText:"+91",
                      border:UnderlineInputBorder(
                        borderSide:BorderSide(color:Colors.grey)
                      ),
                     
                    )
                   )
                   ),
                   SizedBox(

                    width:10,
                   ),

                   SizedBox
                     (
                      width:330,
                       child:TextField(
                         keyboardType: TextInputType.number,
                         controller:phoneController,
                         decoration:InputDecoration(
                          enabledBorder:UnderlineInputBorder(
                            borderSide:BorderSide(color:Colors.grey)
                          )
                         )
                      )
                      ),
                      
                   
                   ]
                   )
                    
                ],
              ) ,
              floatingActionButton:UiHelper.customButton(
                callback:(){

                },
                buttonname:"Next"
                ),
              floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
               
             );
    }
}