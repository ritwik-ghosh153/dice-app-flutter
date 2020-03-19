import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          change(leftDiceNumber),
          change(rightDiceNumber),
        ],
      ),
    );
  }
  Widget change(int diceNumber){
    return Expanded(
      child: FlatButton
        (child: Image.asset('images/dice$diceNumber.png'),
        onPressed: (){
          setState(() {
            leftDiceNumber=Random().nextInt(6)+1;
            rightDiceNumber=Random().nextInt(6)+1;
          });
        },
      ),
    );
  }

  }

