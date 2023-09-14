
import 'package:flutter/material.dart';

import 'rollDice.dart';

const Alignment start = Alignment.topLeft;
const Alignment end = Alignment.bottomRight;



class GradientCon extends StatelessWidget {
  final Color color1 = Color.fromARGB(255, 0, 0, 1);
  final Color color2 = Color.fromARGB(0, 255, 255, 1);
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [color1, color2], begin: start, end: end)),
      child: Center(
        child: RollDice()
      ),
    );
  }

}
