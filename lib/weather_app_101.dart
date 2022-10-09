import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import'dart:convert';


void main () => runApp(
  MaterialApp(
    title:"Weather App",
    home: Home(),
  )
);

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var temp;
  var description;
  var currently;
  var visibility;
  var windSpeed;
  late String city;

  TextEditingController _city1 = TextEditingController();

  Future getWeather () async {
    http.Response response = await http.get((Uri.parse)("http://api.openweathermap.org/data/2.5/weather?q=Pune&units=metric&appid=bc12083e70d2d22298c2df1cec7101d9"));
    var results = jsonDecode(response.body);
    setState(() {
      this.temp = results['main']['temp'];
      this.description = results['weather'][0]['description'];
      this.currently = results['weather'][0]['main'];
      this.visibility = results['visibility'];
      this.windSpeed = results['wind']['speed'];

    });
  }

  @override
  void initState(){
    super.initState();
    this.getWeather();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:<Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: TextField(
                controller: _city1,
                onChanged: (v) => _city1.text = v,

                decoration: InputDecoration(
                  labelText: 'Name the City',
                )),
          ),
          ElevatedButton(
            onPressed: () {
              city = _city1.toString();
              setState(() {

              });
            },
            child: Text("confirm place"),
          ),

          Container(
            height: MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue[400],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "Currently in Pune",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  temp != null ? temp.toString() + "\u00B0": "Loading",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight : FontWeight.w600,

                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    currently != null ? currently.toString() : "Loading",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),

          ),
          Expanded(
              child:Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  children: [
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.temperatureHalf),
                      title: Text("Temperature"),
                      trailing: Text(temp != null ? temp.toString() + "\u00B0" : "Loading"),

                    ),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.cloud),
                      title: Text("Weather"),
                      trailing: Text(description != null ? description.toString(): "Loading"),


                    ),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.sun),
                      title: Text("Visibility"),
                      trailing: Text(visibility != null ? visibility.toString() : "Loading"),

                    ),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.wind),
                      title: Text("Wind Speed"),
                      trailing: Text(windSpeed != null ? windSpeed.toString() : "Loading"),

                    ),
                  ],
                ),
              ),
          ),

        ],
      ),
    );
  }
}
