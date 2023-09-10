import 'package:flutter/material.dart';

class HomepageAndroid{

  Widget HomeScreen(BuildContext context){
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'images/bg_android.jpg',
              ),
              fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}
