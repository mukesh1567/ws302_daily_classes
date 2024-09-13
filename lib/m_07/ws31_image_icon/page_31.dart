import 'package:flutter/material.dart';
import 'package:ws302_daily_classes/m_07/ws30_colors/domain/app_colors.dart';
import 'package:ws302_daily_classes/m_07/ws31_image_icon/domains/app_constant.dart';

class SecondPage31 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.primaryColor,
        title: Center(child: Text(appConst.appTitle)),
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/UpscalerAfter.jpg',

              ///widget chahiye to Image.Network/assests use krege
              width: 200,
              height: 200,
            ),
          ),

          ClipOval(
            child: Image.asset('assets/images/images.jpeg'),
          ),

          Image.asset('assets/images/UpscalerAfter.jpg',
            width: 200,
            height: 200,
            //color: Colors.brown,
            //fit: BoxFit.fill,
          ),
          //Image.asset('assets/images/image_flower.jpg'),
          //Image.file(file),
          //Image.memory(bytes),
          //Image.network(src),

          Container(
            //child: Image.asset('assets/images/image_flower.jpg')),
            width: 200,
            height: 200,
            color: Colors.black26,
            child: Image.network('https://images.pexels.com/photos/27363857/pexels-photo-27363857/free-photo-of-top-view-of-a-pie-with-berries.jpeg'),
          ),
        ],
      ),
    );
  }
}
