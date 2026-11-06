import 'package:flutter/material.dart';
import 'dart:math';

//this class is the static side of the UI
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
  //Random class to generate random numbers
  //Underscore in the front means the class is private
  //State is the one that render UI state and is dynamic part of widget
  class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  //Default dice number
  var currentDiceNumber = 5;
  
 

  void rollDice() {
    //setState will call the build method and update the UI with new dice number
    setState(() {
      currentDiceNumber = randomizer.nextInt(6) + 1; //The number generator starts from 0-5, so we add 1 to make it 1-6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min, 
          children: [
            //Image of the dice
            Image.asset('assets/dice-$currentDiceNumber.png', width: 200),
            //Button that rolls the dice
            TextButton(
              onPressed: rollDice,
              child: const Text("Press Me", 
              style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 225, 235, 89))
              ), //Text
            ), //TextButton
          ], //Children
        ); //Column
  }
  }
