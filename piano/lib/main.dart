import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    Piano_app(),
  );
}
class Piano_app extends StatelessWidget {
  const Piano_app({Key key}) : super(key: key);

void playtheNote(String soundNumber){
  final player1 = AudioCache();
  player1.play('$soundNumber.wav');
  print(soundNumber);
}
FlatButton buttonCreater(String soundNumber, String soundName, Color colorName){
return  FlatButton(
  height: 60,
  minWidth: double.infinity,
  color: colorName,
  child: Text(soundName),
  onPressed: (){
    playtheNote(soundNumber);
  },
);
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
             // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Play some music ',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 5,
                    wordSpacing: 5,
                    color: Colors.purple,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                buttonCreater('B','B', Colors.blue.shade50),
                buttonCreater('E', 'E', Colors.yellow.shade50),
                buttonCreater('C', 'C', Colors.pink.shade50),
               buttonCreater('D', 'D',  Colors.green.shade50),
               buttonCreater('F', 'F',  Colors.purple.shade50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
