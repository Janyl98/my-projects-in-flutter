import 'package:flutter/material.dart';
import 'package:weather_app/constants/assets_const.dart';
import 'package:weather_app/home/weather_extra.dart';
import 'package:weather_app/widgets/city_time.dart';
import 'package:weather_app/widgets/current_weather_card.dart';
import 'package:weather_app/widgets/weather_info_cards.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CityTime(city: 'Stockholm\nSweden', time: 'Tue, Jun 13'),
        const CurrentWeatherCard(
            degree: '19', weatherState: 'Rainy', icon: AssetsConst.weather05),
        const WeatherInfoCards(
            rainFallValue: '3cm', windSpeed: '19km/h', humidityPersent: '64%'),
        const SizedBox(
          height: 30,
        ),
        const WeatherExtra(),
        Container(),
      ],
    );
  }
}
