import 'package:flutter/material.dart';
import 'package:whatsapp/screens/homescreen/homescreen.dart';
import 'package:whatsapp/screens/homescreen/statusscreen.dart';
import 'package:whatsapp/screens/splashscreens.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {
     return MaterialApp(
      title:"WhatsApp",
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Color(0XFF00A994)),
        useMaterial3: false,
      ),
      home:HomeScreen()
     );

  }
}