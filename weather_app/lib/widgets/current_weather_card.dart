import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/constants/assets_const.dart';
import 'package:weather_app/constants/colors_const.dart';

class CurrentWeatherCard extends StatelessWidget {
  const CurrentWeatherCard(
      {super.key,
      required this.degree,
      required this.weatherState,
      required this.icon});
  final String degree;
  final String weatherState;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            icon,
            height: 200,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Text(
                    '$degree ',
                    style: const TextStyle(
                      fontSize: 90,
                      fontWeight: FontWeight.bold,
                      color: AppColors.degreeTextColor,
                      height: 1,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: SvgPicture.asset(
                      AssetsConst.degreeSign,
                      height: 30,
                    ),
                  ),
                ],
              ),
              FittedBox(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  child: Text(
                    weatherState,
                    overflow: TextOverflow.fade,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: AppColors.degreeTextColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
