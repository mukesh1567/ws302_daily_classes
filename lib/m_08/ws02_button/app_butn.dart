import 'package:flutter/material.dart';
import 'package:ws302_daily_classes/m_08/ws02_button/page_butn.dart';

void main(){
  runApp(muApp());
}

class muApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: ButtonPage()
    );
  }
}