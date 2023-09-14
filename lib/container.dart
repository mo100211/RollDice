import 'dart:developer';

import 'package:flutter/material.dart';

const Alignment start = Alignment.topLeft;
const Alignment end = Alignment.bottomRight;

class GradientCon extends StatefulWidget {
  @override
  State<GradientCon> createState() => Contain();
}

class Contain extends State<GradientCon> {
  var image = 'images1/dice5.jpeg';
  final Color color1 = Color.fromARGB(255, 0, 0, 1);
  final Color color2 = Color.fromARGB(0, 255, 255, 1);


  void rollDice() {

    setState(
          () {

        image = 'images1/dice1.png';
      },
    );
    log("how that does work at all damn it this is boring so boring pls god save me ");
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [color1, color2], begin: start, end: end)),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              image,
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
              icon: Icon(Icons.add_reaction),
            ),

          ],
        ),
      ),
    );
  }

}
