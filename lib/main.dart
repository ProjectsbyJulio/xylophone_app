import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              generateKey(soundNum: 1, color: Colors.red),
              generateKey(soundNum: 2, color: Colors.yellow),
              generateKey(soundNum: 3, color: Colors.blue),
              generateKey(soundNum: 4, color: Colors.green),
              generateKey(soundNum: 5, color: Colors.orange),
              generateKey(soundNum: 6, color: Colors.blueGrey),
              generateKey(soundNum: 7, color: Colors.indigo),
            ],
          ),
        ),
      ),
    );
  }
}

void playSound(int soundNum) {
  final player = AudioCache();
  player.play('note$soundNum.wav');
}

Expanded generateKey({Color color, int soundNum}) {
  return Expanded(
      child: FlatButton(
    color: color,
    onPressed: () {
      playSound(soundNum);
    },
  ));
}
