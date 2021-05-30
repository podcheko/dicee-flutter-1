import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.width * 0.1,
      child: FloatingActionButton.extended(
        heroTag: 'test2',
        onPressed: () {
          //Navigator.pop(context);

          /// переход на другой экран например на эран с заполнением формы(анкеты/опросника) StepperDemo()
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DicePage()),
          );
        },
        label: Row(
          children: [
            Text("Back"),
            //Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
