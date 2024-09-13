import 'package:ws302_daily_classes/m09/ws04_db_mynote/db_hom.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(dbAp0209());
}

class dbAp0209 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DbHome4(),
    );
  }
}