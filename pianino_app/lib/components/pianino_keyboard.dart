import 'package:flutter/material.dart';
import 'package:pianino_app/components/pianino_black_button.dart';
import 'package:pianino_app/components/pianino_white_button.dart';

class PianoKeyboard extends StatelessWidget {
  const PianoKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      // ListView scroll boluu uchun
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          // Stack kabattap koyuu uchun
          Stack(
            children: [
              Row(
                children: [
                  PianoWhiteButton(text: 'f1', nota: 'do.wav'),
                  PianoWhiteButton(text: 'f2', nota: 're.wav'),
                  PianoWhiteButton(text: 'f3', nota: 'mi.wav'),
                  PianoWhiteButton(text: 'f4', nota: 'fa.wav'),
                  PianoWhiteButton(text: 'f5', nota: 'sol.wav'),
                  PianoWhiteButton(text: 'f6', nota: 'lya.wav'),
                  PianoWhiteButton(text: 'f7', nota: 'si.wav'),
                  PianoWhiteButton(text: 'f1', nota: 'do.wav'),
                  PianoWhiteButton(text: 'f2', nota: 're.wav'),
                  PianoWhiteButton(text: 'f3', nota: 'mi.wav'),
                  PianoWhiteButton(text: 'f4', nota: 'fa.wav'),
                  PianoWhiteButton(text: 'f5', nota: 'sol.wav'),
                  PianoWhiteButton(text: 'f6', nota: 'lya.wav'),
                  PianoWhiteButton(text: 'f7', nota: 'si.wav'),
                ],
              ),
              Row(
                children: [
                  PianoBlackButton(text: "f1", nota: 'Db.mp3', leftMargin: 55),
                  PianoBlackButton(text: "f2", nota: 'Eb.mp3', leftMargin: 26),
                  PianoBlackButton(text: "", nota: '', visible: false),
                  PianoBlackButton(text: "f4", nota: 'Gb.mp3', leftMargin: 45),
                  PianoBlackButton(text: "f5", nota: 'Ab.mp3', leftMargin: 26),
                  PianoBlackButton(text: "f6", nota: 'Bb.mp3', leftMargin: 26),
                  PianoBlackButton(text: "", nota: '', visible: false),
                  PianoBlackButton(text: "f1", nota: 'Db.mp3', leftMargin: 45),
                  PianoBlackButton(text: "f2", nota: 'Eb.mp3', leftMargin: 26),
                  PianoBlackButton(text: "", nota: '', visible: false),
                  PianoBlackButton(text: "f4", nota: 'Gb.mp3', leftMargin: 45),
                  PianoBlackButton(text: "f5", nota: 'Ab.mp3', leftMargin: 26),
                  PianoBlackButton(text: "f6", nota: 'Bb.mp3', leftMargin: 26),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
