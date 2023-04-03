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



  class  DicePage extends StatefulWidget {

    @override
    _DicePageState createState() => _DicePageState();
  }

  class _DicePageState extends State<DicePage> {
    var leftdie = 1;
    int rightdie=1;
    void fun (){
      leftdie++;
      if (leftdie==7) {
        leftdie=1;
      }
    }
    @override
    Widget build(BuildContext context) {

      return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      fun();
                    });

                    print("heya");
                  },
                  child: Image(
                    image: AssetImage('images/dice$leftdie.png'),
                  )),
            ),


            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      rightdie=Random().nextInt(6) +1;

                    });
                    print("heya");
                  },
                  child: Image(
                    image: AssetImage('images/dice$rightdie.png'),
                  )),
            ),
          ],
        ),
      );
    }
  }


