import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget getWeatherIcon({required String? weatherDescription,required double size}){

  switch(weatherDescription){
    case "clear":
      {return Icon(Icons.sunny,color: Colors.white,size: size,);}
      break;

    case "Clouds":
      {return Icon(Icons.cloud_sharp,color: Colors.white,size: size);}
      break;

    case "Rain":
      {return Icon(Icons.cloudy_snowing,color: Colors.white,size: size,);}
      break;

    case "Snow":
      {return Icon(Icons.severe_cold,color: Colors.white,size: size,);}
      break;

    default:
      {return Icon(Icons.sunny,color: Colors.white,size: size,);}
      break;
  }
}