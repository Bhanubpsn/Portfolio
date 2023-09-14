import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio/Homepage/android/homepage_android.dart';
import 'package:portfolio/Homepage/web/homepage_web.dart';
import 'package:portfolio/WeatherDetails/network.dart';
import 'package:portfolio/WeatherDetails/weather_forecast_model.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {



  late Future<WeatherForecastModel> forecastObject;
  String _cityName = "Haldwani";
  var description = "clear";
  var temp = "32";

  void setting()async{
    var instance = await forecastObject;
    setState(() {
      description = instance.list![0].weather![0].main!;
      temp = instance.list![0].temp!.day!.toInt().toString();
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    forecastObject = Network().getWeatherForecast(cityName: _cityName);
    setting();

  }

  @override
  Widget build(BuildContext context) {
    if(defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.android){

      return HomepageAndroid().HomeScreen(context,description,temp);
    }
    else{

      return HomepageWeb().HomeScreen(context, description, temp);
    }
  }
}


