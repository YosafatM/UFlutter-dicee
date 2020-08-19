import 'dart:math';

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
        body: PageDice(),
      ),
    ),
  );
}

class PageDice extends StatefulWidget {
  @override
  _PageDiceState createState() => _PageDiceState();
}

class _PageDiceState extends State<PageDice> {
  int leftNumber = 1;
  int rightNumber = 1;

  void changeDice() {
    leftNumber = Random().nextInt(6) + 1;
    rightNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    changeDice();
                  });
                },
                child: Image.asset('images/dice$leftNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    changeDice();
                  });
                },
                child: Image.asset('images/dice$rightNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
