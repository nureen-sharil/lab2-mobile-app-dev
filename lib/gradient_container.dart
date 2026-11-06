import 'package:flutter/material.dart';
import 'dice_roller.dart';

class GradientContainer extends StatelessWidget{

  //Constructor
  GradientContainer({super.key});

  @override 
  Widget build(BuildContext context){
    
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
          colors: [Color.fromARGB(255, 15, 58, 94), Color.fromARGB(255, 134, 34, 42)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ), 
      ),
      child: Center (
      child: DiceRoller(),  
      ), //Center
    ); //Container
  }

}