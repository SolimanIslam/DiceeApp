import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text("Dicee"),
        ),
      ),
      body: DiceePage(),
    ),
  ));
}

class DiceePage extends StatefulWidget {
  const DiceePage({Key? key}) : super(key: key);

  @override
  State<DiceePage> createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int left_dice_no = 1;
  int right_dice_no = 1;

  void change_dice_number() {
    setState(() {
      left_dice_no = Random().nextInt(6) + 1;
      right_dice_no = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(8),
            child: TextButton(
                onPressed: () {
                  change_dice_number();
                },
                child: Image.asset('images/dice$left_dice_no.png')),
          )),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(8),
            child: TextButton(
                onPressed: () {
                  change_dice_number();
                },
                child: Image.asset('images/dice$right_dice_no.png')),
          ))
        ],
      ),
    );
  }
}
