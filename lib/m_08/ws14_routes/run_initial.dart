import 'package:flutter/material.dart';
import 'package:ws302_daily_classes/m_08/ws14_routes/app_routes.dart';
import 'package:ws302_daily_classes/m_08/ws14_routes/pg1_splash.dart';
import 'package:ws302_daily_classes/m_08/ws14_routes/pg2_home.dart';
import 'package:ws302_daily_classes/m_08/ws14_routes/pg3_second.dart';

void main(){
  runApp(App1408());
}

class App1408 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Spls1408(),

/*      initialRoute: '/splash',
      routes: {
        '/splash' : (context)=> Spls1408(),
        '/home' : (context) => Ho1408(),
        '/second' : (context) => Sec1408(),
      }*/

        /*initialRoute: AppRoutes.SPLASH_Route,
        routes: {
          '/splash' : (context)=> Spls1408(),
          '/home' : (context) => Ho1408(),
          '/second' : (context) => Sec1408(),
        }*/

        initialRoute: AppRoutes.SPLASH_Route,
        routes: AppRoutes.getRouteMap()

    );
  }
}