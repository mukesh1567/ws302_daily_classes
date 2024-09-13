import 'package:flutter/material.dart';
import 'package:ws302_daily_classes/m09/ws05_db_addnote_edit/db_hom5.dart';

void main(){
  runApp(dbAp0509());
}

class dbAp0509 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DbHome5(),
    );
  }
}