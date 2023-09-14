import 'dart:convert';
import 'package:http/http.dart';
import 'package:portfolio/WeatherDetails/weather_forecast_model.dart';


class Network
{
  Future<WeatherForecastModel> getWeatherForecast({required String cityName}) async
  {
    var finalUrl = "https://api.openweathermap.org/data/2.5/forecast/daily?q=$cityName&appid=ed60fcfbd110ee65c7150605ea8aceea&units=metric";
    final response = await get(Uri.parse(finalUrl));

    if(response.statusCode == 200)
    {
      return WeatherForecastModel.fromJson(json.decode(response.body));
    }
    else
    {
      throw Exception("Error getting weather forecast");
    }
  }
}