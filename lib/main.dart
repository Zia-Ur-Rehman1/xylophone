import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());
final player = AudioCache();

class XylophoneApp extends StatelessWidget {
  Expanded buildkey({Color? color, int? soundNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play('note$soundNum.wav');
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, soundNum: 1),
              buildkey(color: Colors.green, soundNum: 2),
              buildkey(color: Colors.blue, soundNum: 3),
              buildkey(color: Colors.yellow, soundNum: 4),
              buildkey(color: Colors.purpleAccent, soundNum: 5),
              buildkey(color: Colors.tealAccent, soundNum: 6),
              buildkey(color: Colors.pinkAccent, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
