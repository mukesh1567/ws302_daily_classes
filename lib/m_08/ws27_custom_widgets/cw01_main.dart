import 'package:flutter/material.dart';
import 'package:ws302_daily_classes/m_08/ws27_custom_widgets/cw02_home.dart';


void main(){
  runApp(CWApp2708());
}

class CWApp2708 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CwHo2708(),
    );
  }
}