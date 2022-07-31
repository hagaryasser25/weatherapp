import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherModel {
  final String? weatherStateName;
  late final double temp;
  final double maxTemp;
  final double minTemp;
  final String name;

  WeatherModel(
      {this.weatherStateName,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.name});

  String getImage() {
    if (weatherStateName == 'clear sky') {
      return 'assets/images/clear.png';
    } else if (weatherStateName == 'overcast clouds') {
      return 'assets/images/cloudy.png';
    } else if (weatherStateName == 'light rain') {
      return 'assets/images/rainy.png';
    } else {
      return 'assets/images/clear.png';
    }
  }

  String getBackground() {
    if (weatherStateName == 'clear sky') {
      return 'https://i.pinimg.com/736x/ac/08/f3/ac08f302fdb376ea38418dda6854f8b1.jpg';
    } else if (weatherStateName == 'overcast clouds') {
      return 'https://cutewallpaper.org/22/cartoon-landscape-wallpapers/2368625513.jpg';
    } else if (weatherStateName == 'light rain') {
      return 'https://cutewallpaper.org/22/cartoon-landscape-wallpapers/2368625513.jpg';
    }
    else {
      return 'https://i.pinimg.com/736x/ac/08/f3/ac08f302fdb376ea38418dda6854f8b1.jpg';
    }
  }
  Color getColor(){
    if (weatherStateName == 'clear sky') {
      return Color.fromARGB(255, 248, 236, 131);
    } else if (weatherStateName == 'overcast clouds') {
      return Colors.blue;
    } else if (weatherStateName == 'light rain') {
      return Colors.blue;
    }
    else {
      return Color.fromARGB(255, 248, 236, 131);
    }
  }
}
