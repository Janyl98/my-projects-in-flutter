import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/constants/colors_const.dart';

class WeatherExtraCard extends StatelessWidget {
  const WeatherExtraCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.degree});
  final String title;
  final String icon;
  final String degree;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.whiteColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 7, 12, 0),
              child: Text(
                title,
                style: const TextStyle(color: AppColors.titleTextColor),
              ),
            ),
            Expanded(
              child: SvgPicture.asset(icon),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 10),
              child: Text(
                degree,
                style: const TextStyle(
                  color: AppColors.titleTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
