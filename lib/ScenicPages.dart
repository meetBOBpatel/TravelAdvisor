import 'package:flutter/material.dart';
import 'package:travel_advisor/WeatherData.dart';
import 'package:travel_advisor/Weather.dart';
import 'package:travel_advisor/DataService.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

class ScenicPages extends StatefulWidget {
  // WeatherData weather;
  // ScenicPages({Key key, @required this.weather}) : super(key: key);
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<ScenicPages>
    with SingleTickerProviderStateMixin {
  bool isLoading = false;
  WeatherData weatherData;
  final _dataService = DataService();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Scenic Spots Page"),
      ),
      body: new Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: weatherData != null
                  ? Weather(weather: weatherData)
                  : Container(),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: isLoading
                  ? CircularProgressIndicator(
                      strokeWidth: 2.0,
                      valueColor: new AlwaysStoppedAnimation(Colors.blue),
                    )
                  : ElevatedButton(
                      // ElevatedButton(
                      // icon: new Icon(Icons.refresh),
                      // tooltip: 'Refresh',
                      // onPressed: _search,
                      onPressed: _search, child: Text('Get Weather'),
                      // color: Colors.white,
                    ),
            ),
            // Text("Hello"),
          ],
        ),
      ),
    );
  }

  void _search() async {
    setState(() => isLoading = true);

    final lat = '44.4280';
    final lon = '-110.5885';

    // decodes json file of weather data from weather API
    final weatherResponse = await _dataService.getWeather(lat, lon);

    // setState used because UI based on this response
    setState(() {
      weatherData = weatherResponse;
      isLoading = false;
    });
  }
}
