import 'package:dice_app_with_cubit/home/home_page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE93B),
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: const Color(0xffDA0037),
        title: const Text("Dice App"),
      ),
      body: const HomePageBody(),
    );
  }
}
