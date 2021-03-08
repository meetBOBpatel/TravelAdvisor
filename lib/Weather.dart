import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_advisor/WeatherData.dart';

class Weather extends StatelessWidget {
  final WeatherData weather;

  Weather({Key key, @required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(weather.name),
        Text("Hello"),
        Text(weather.weatherInfo.description,
            style: new TextStyle(fontSize: 32.0)),
        Text('${weather.temp.temp}°F'),
        Image.network(weather.iconUrl),
        Text(new DateFormat.yMMMd().format(weather.date)),
        Text(new DateFormat.Hm().format(weather.date)),
      ],
    );
  }
}
