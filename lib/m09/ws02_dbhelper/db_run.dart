import 'package:flutter/material.dart';
import 'package:ws302_daily_classes/m09/ws02_dbhelper/db_hom.dart';

void main(){
  runApp(dbAp0209());
}

class dbAp0209 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: dbHo0209(),
    );
  }
}