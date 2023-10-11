import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice=1;
  int rightdice=1;
  void change(){
    setState(() {
      leftdice=Random().nextInt(6)+1;
      rightdice=Random().nextInt(6)+1;
  });}
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Image.asset('images/dice$leftdice.png'),
                onPressed: () {
                  change();
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                   change();
                  },
                  child: Image.asset('images/dice$rightdice.png')),
            ),
          ),
        ],
      ),
    );
  }
}

