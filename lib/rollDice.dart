
import 'dart:developer'as dev;

import 'package:flutter/material.dart';
import 'dart:math';
class RollDice extends StatefulWidget {
  @override
  State<RollDice> createState() {
     return  _RollDiceState();
  }



}

class _RollDiceState extends State<RollDice> {
  var image = 'images1/dice1.png';
int dice =1;
final random =Random();

  void rollDice() {

    setState(
          () {
            dice =  random.nextInt(6)+1;

      },
    );
    dev.log("how that does work at all damn it this is boring so boring pls god save me ");
  }

  Widget build(BuildContext context) {
   return Column(
     mainAxisSize: MainAxisSize.min,
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: [
       Image.asset(
         'images1/dice$dice.png',
         height: 50,
       ),
       const SizedBox(
         height: 20,
       ),
       ElevatedButton.icon(
         style: ElevatedButton.styleFrom(
           primary: Colors.lightGreen,
         ),
         onPressed: () {
           rollDice();
         },
         label: const Text("RoLL Dice "),
         icon: Icon(Icons.wb_sunny),
       ),

     ],
   );
  }
}