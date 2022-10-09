import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:untitled/weather_model.dart';

class CurrentWeatherPage extends StatefulWidget {
  const CurrentWeatherPage({Key? key}) : super(key: key);

  @override
  State<CurrentWeatherPage> createState() => _CurrentWeatherPageState();
}

late Weather _weather;
class _CurrentWeatherPageState extends State<CurrentWeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          builder: (context,snapshot){
            if (snapshot != null){
              Weather _weather = snapshot.data;
              if(_weather == null){
                return Text("Error getting weather");

              }
              else{
                return weatherBox(_weather);

              }

            }
            else{
              return CircularProgressIndicator();
            }
          },
          future: getCurrentWeather(),
        )
      )

    );
    
    Widget weatherBox(Weather){
      return Column(
        children:<Widget>[
          Text("${_weather.temp}°C"),
          Text("${_weather.description}"),
          Text("Feels:${_weather.feelsLike}°C"),
          Text("H:${_weather.high}°C L:${_weather.low}°C"),


          
        ]
      );
    }

    Future getCurrentWeather() async{
      Weather weather;
      String city = "delhi";
      String apikey = "ebff0e548a4675f60430a926cf919443";
      var url = "https://api.openweathermap.org/data/2.5/onecall?lat={lat}&lon={lon}&exclude={part}&appid=$apikey&units=metric";

      final response = await http.get(url);

      if(response.statuscode == 200 ){
        weather = Weather.fromJson(jsonDecode(response.body));

      }
      else{

      }
    }
  }
}
