import 'package:flutter/material.dart';
import 'package:travel_advisor/WeatherData.dart';
import 'package:travel_advisor/Weather.dart';
import 'package:travel_advisor/DataService.dart';

class ScenicPages extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<ScenicPages>
    with SingleTickerProviderStateMixin {
  // State to show if loading up weather
  bool isLoading = false;

  WeatherData weatherData;
  final _dataService = DataService(); // gets data from weather API

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Scenic Spots Page"),
      ),
      body: new Center(
        child: Column(
          children: [
            // Weather
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
                      onPressed: _search,
                      child: Text('Get Weather'),
                    ),
            ),
            // end Weather
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
