import 'package:flutter/material.dart';
import 'package:ws302_daily_classes/m_08/ws27_custom_widgets/cw3_movie_widget.dart';

class CwHo2708 extends StatelessWidget{

  List<Map<String, dynamic>> mvData = [
    {
      'bg_img' : 'assets/images/mo_atlas.jpg',
      'is_netflix' : false,
      'is_recently' : false,
      'is_top' : true,

    },
    {
      'bg_img' : 'assets/images/mo_Beekeeper.jpg',
      'is_netflix' : false,
      'is_recently' : true,
      'is_top' : false,

    },
    {
      'bg_img' : "assets/images/mo_furiosa.jpg",
      'is_netflix' : true,
      'is_recently' : false,
      'is_top' : true,

    },
    {
      'bg_img' : 'assets/images/mo_garfield.jpg',
      'is_netflix' : true,
      'is_recently' : true,
      'is_top' : true,

    },
    {
      'bg_img' : 'assets/images/mo_if.jpg',
      'is_netflix' : true,
      'is_recently' : true,
      'is_top' : true,

    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.red.shade400,
        title: Center(
        child: Text("CustomWidget task",
        style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,

    ),
        ),
    ),
    ),

      body: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: mvData.length,
            itemBuilder: (context, index){
          return MovieWidget2708(
              mWidth: 150,

              isTop10: mvData[index]['is_top'],
              isRecentlyAdded: mvData[index]['is_recently'],
              isNetflixLogo: mvData[index]['is_netflix'],
              imgPath: mvData[index]['bg_img']);

        }),
      ),
    );

  }
}