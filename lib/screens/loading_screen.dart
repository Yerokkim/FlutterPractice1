import 'package:flutter/material.dart';
import 'package:mecard/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = '422fc5ecab77a69841dc7b992ca237c1';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    longitude = location.longitude;
    latitude = location.latitude;
    print(longitude);
    print(latitude);
    getData();
  }

  void getData() async {
    http.Response response = await http.get("https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey");
    if (response.statusCode == 200) {
      String data = response.body;
      var deCodedData = jsonDecode(data);
      int weatherCondition = deCodedData['weather'][0]['id'];
      double weatherTemp = deCodedData['main']['temp'];
      String cityName = deCodedData['name'];

      print(weatherCondition);
      print(weatherTemp);
      print(cityName);


    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    // getData();
    return Scaffold();
  }
}
