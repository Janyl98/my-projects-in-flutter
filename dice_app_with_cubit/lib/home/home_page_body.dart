import 'dart:math';

import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  // Client
  int clientFirstIndex = 1;
  int clientSecondIndex = 1;
  int clientSum = 0;

  void clientAction() {
    // clientFirstIndex 1-6 cheyinki san alat
    clientFirstIndex = rundom.nextInt(6) + 1;
    // clientSecondIndex 1-6 cheyinki san alat
    clientSecondIndex = rundom.nextInt(6) + 1;
    // clientFirstIndex+clientSecondIndex summasy clientSum'dyn maanisine koshulat
    clientSum = clientSum + clientFirstIndex + clientSecondIndex;
    // Ekrandy jangyloo
    setState(() {});
    result();
    if (clientSum < 50) {
      manageAppAction();
    } else {}
  }

  // App
  int appFirstIndex = 1;
  int appSecondIndex = 1;
  int appSum = 0;

  void manageAppAction() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(content: CircularProgressIndicator());
      },
    );

    Future.delayed(const Duration(seconds: 1)).whenComplete(
      () {
        Navigator.pop(context);
        appAction();
      },
    );
  }

  void appAction() {
    // appFirstIndex 1-6 cheyinki san alat
    appFirstIndex = rundom.nextInt(6) + 1;
    // appSecondIndex 1-6 cheyinki san alat
    appSecondIndex = rundom.nextInt(6) + 1;
    // appSum'dyn maanisine appFirstIndex+appSecondIndex summasyn kosh
    appSum = appSum + appFirstIndex + appSecondIndex;
    // Ekrandy jangyloo
    setState(() {});
    result();
  }

  Random rundom = Random();

  void result() {
    if (clientSum >= 50) {
      showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text('Oi Azamat kuyunsyn go 👏 👏 👏 '),
            actions: [
              TextButton(
                onPressed: resetAll,
                child: const Text('Ok'),
              )
            ],
          );
        },
      );
    } else if (appSum >= 50) {
      showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text(
                'Apeei jenilip kaldyn go :(. Kel kaira oinoibuz 👎 👎 👎 '),
            actions: [
              TextButton(
                onPressed: resetAll,
                child: const Text('Ok'),
              )
            ],
          );
        },
      );
    }
  }

  void resetAll() {
    clientFirstIndex = 1;
    clientSecondIndex = 1;
    clientSum = 0;

    appFirstIndex = 1;
    appSecondIndex = 1;
    appSum = 0;

    Navigator.pop(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'You $clientSum',
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 20),
              Expanded(
                child: InkWell(
                  onTap: clientAction,
                  child: Image.asset('assets/images/dice$clientFirstIndex.png'),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: InkWell(
                  onTap: clientAction,
                  child:
                      Image.asset('assets/images/dice$clientSecondIndex.png'),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 20),
              Expanded(
                child: Image.asset('assets/images/dice$appFirstIndex.png'),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Image.asset('assets/images/dice$appSecondIndex.png'),
              ),
              const SizedBox(width: 20),
            ],
          ),
          Text(
            'App $appSum',
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

  /*
  rundon.nextInt(6) --> 0 =< x < 6
  0,1,2,3,4,5
  0+1 = 1
  1+1 = 2
  2+1 = 3
  3+1 = 4
  4+1 = 5
  5+1 = 6
  */