import 'package:weather_app/model/current_model.dart';
import 'package:weather_app/model/location_model.dart';

class Weather {
  const Weather({
    required this.current,
    required this.location,
  });

  final Location location;
  final Current current;

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      current: Current.fromWeatherApi(json['current']),
      location: Location.fromWeatherApi(json['location']),
    );
  }
}

// final mockWeather = Weather.fromJson(data);

// final mockWeather = Weather(
//   current: Current(
//     lastUpdated: data['current']!['last_updated'] as String,
//     tempC: data['current']!['temp_c'] as double,
//     isDay: data['current']!['is_day'] as int,
//     condition: Condition(
//       code: (data['current']!['condition']! as Map)['code'] as int,
//       icon: (data['current']!['condition']! as Map)['icon'] as String,
//       text: (data['current']!['condition']! as Map)['text'] as String,
//     ),
//     windMPH: data['current']!['wind_mph'] as double,
//     windKPH: data['current']!['wind_kph'] as double,
//     windDir: data['current']!['wind_dir'] as String,
//     precipMM: data['current']!['precip_mm'] as num,
//     precipIn: data['current']!['precip_in'] as num,
//     humidity: data['current']!['humidity'] as int,
//     cloud: data['current']!['cloud'] as int,
//     feelsLikeC: data['current']!['feelslike_c'] as double,
//     visKM: data['current']!['vis_km'] as num,
//   ),
//   location: Location(
//     name: data['location']!['name'] as String,
//     region: data['location']!['region'] as String,
//     country: data['location']!['country'] as String,
//     lat: data['location']!['lat'] as double,
//     lon: data['location']!['lon'] as double,
//     tzId: data['location']!['tz_id'] as String,
//     localTimeEpoch: data['location']!['localtime_epoch'] as int,
//     localtime: data['location']!['localtime'] as String,
//   ),
// );

final data = {
  "location": {
    "name": "Bishkek",
    "region": "Bishkek",
    "country": "Kyrghyzstan",
    "lat": 42.87,
    "lon": 74.6,
    "tz_id": "Asia/Bishkek",
    "localtime_epoch": 1698079439,
    "localtime": "2023-10-23 22:43"
  },
  "current": {
    "last_updated_epoch": 1698078600,
    "last_updated": "2023-10-23 22:30",
    "temp_c": 6.9,
    "temp_f": 44.5,
    "is_day": 0,
    "condition": {
      "text": "Patchy rain possible",
      "icon": "//cdn.weatherapi.com/weather/64x64/night/176.png",
      "code": 1063
    },
    "wind_mph": 2.7,
    "wind_kph": 4.3,
    "wind_degree": 74,
    "wind_dir": "ENE",
    "pressure_mb": 1028.0,
    "pressure_in": 30.36,
    "precip_mm": 0.05,
    "precip_in": 0.0,
    "humidity": 90,
    "cloud": 88,
    "feelslike_c": 6.5,
    "feelslike_f": 43.8,
    "vis_km": 10.0,
    "vis_miles": 6.0,
    "uv": 1.0,
    "gust_mph": 3.5,
    "gust_kph": 5.7
  }
};
