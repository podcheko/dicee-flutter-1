import 'dart:math';
import 'package:dicee/screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  //flex: 1,
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        leftDiceNumber = Random().nextInt(5) + 1;
                      });
                      print('LeftDiceNumber=$leftDiceNumber');
                    },
                    child: Image.asset(
                      ('images/dice$leftDiceNumber.png'),
                    ),
                  ),
                ),
                Expanded(
                  // flex: 1,
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        rightDiceNumber = Random().nextInt(5) + 1;
                      });
                      print('RightDiceNumber=$rightDiceNumber');
                    },
                    child: Image.asset(
                      ('images/dice$rightDiceNumber.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text('Hello', style: TextStyle(fontSize: 40)),
          SizedBox(height: 40),
          CircleAvatar(
            radius: 100.0,
            //backgroundColor: Colors.brown.shade400,
            foregroundImage: AssetImage('images/podcheko1.jpg'),
          ),
          SizedBox(height: 100),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screen2()),
              );
            },
            child: Text('NEXT'),
          ), // your button beneath text
        ],
      ),
    );
  }
}
