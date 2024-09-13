import 'package:flutter/material.dart';
import 'package:ws302_daily_classes/m_08/ws14_routes/pg1_splash.dart';
import 'package:ws302_daily_classes/m_08/ws14_routes/pg2_home.dart';
import 'package:ws302_daily_classes/m_08/ws14_routes/pg3_second.dart';

class AppRoutes{

  static final String HOME_Route ='/home';
  static final String SPLASH_Route ='/splash';
  static final String SECOND_Route ='/second';

  static Map<String, Widget Function(BuildContext)> getRouteMap() => {
  HOME_Route : (context) => Ho1408(),
  SPLASH_Route : (context) => Spls1408(),
  SECOND_Route : (context) => Sec1408()  ,

    ///Map ko static bnana hoga

  };
}