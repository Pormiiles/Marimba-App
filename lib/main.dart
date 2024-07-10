import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {

  Future<void> tocarSom(int numDaNota) async {
    final player = AudioPlayer();
    await player.play(AssetSource('nota$numDaNota.wav'));
  }

  Expanded criarBotao(Color cor, int numDaNota) {
    return Expanded(
      child: TextButton(
        onPressed: () async {
          tocarSom(numDaNota);
        },
        child: Text('Tocar nota $numDaNota'),
        style: TextButton.styleFrom(
          foregroundColor: Colors.white, 
          backgroundColor: cor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          textStyle: TextStyle(
            fontWeight: FontWeight.w900
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                criarBotao(Colors.red, 1),
                criarBotao(Colors.orange, 2),
                criarBotao(Colors.yellow, 3),
                criarBotao(Colors.lime, 4),
                criarBotao(Colors.green, 5),
                criarBotao(Colors.blue, 6),
                criarBotao(Colors.indigo, 7),
              ],
          ),
        ),
      ),
    ),);
  }
}
