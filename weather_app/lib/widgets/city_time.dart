import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors_const.dart';

class CityTime extends StatelessWidget {
  const CityTime({super.key, required this.city, required this.time});
  final String city;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          city,
          style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: AppColors.titleTextColor),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          time,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.titleTextColor),
        ),
      ],
    );
  }
}
