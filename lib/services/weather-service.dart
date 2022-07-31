import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapp/models/weather_model.dart';

class WeatherService {
  String baseUrl = 'https://api.openweathermap.org/data/2.5/weather?q=';
  String apiKey = 'eb42031611601a1401c1e7423f7ce112';

  Future<WeatherModel> getWeather({required String cityName}) async {
    Uri url = Uri.parse('$baseUrl$cityName&appid=$apiKey&units=metric');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);

    Map<String, dynamic> data1 = data['main'];
    Map<String, dynamic> data2 = data['weather'][0];
    String data3 = data['name'];
    print(data3);

    WeatherModel weatherData = WeatherModel(
      maxTemp: data1['temp_max'],
      minTemp: data1['temp_min'],
      temp: data1['temp'],
      weatherStateName: data2['description'],
      name: data3
    );

    return weatherData;
  }
}
