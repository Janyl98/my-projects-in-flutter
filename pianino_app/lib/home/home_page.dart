import 'package:flutter/material.dart';
import 'package:pianino_app/components/pianino_keyboard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bir menu tuzup berdi
        drawer: const Drawer(),
        drawerEnableOpenDragGesture: false,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'My Piano App',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: const Column(
          children: [
            Spacer(),
            PianoKeyboard(),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
