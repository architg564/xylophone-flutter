import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget buildkey(int n, Color k) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$n.wav');
        },
        color: k,
        child: Text('$n'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(1, Colors.red),
              buildkey(2, Colors.blue),
              buildkey(3, Colors.green),
              buildkey(4, Colors.yellow),
              buildkey(5, Colors.orange),
              buildkey(6, Colors.purple),
              buildkey(7, Colors.cyan),
            ],
          ),
        ),
      ),
    );
  }
}
