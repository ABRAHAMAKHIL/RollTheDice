import 'dart:math';

import 'package:diceroll/StylyingText.dart';
import 'package:flutter/material.dart';

final currentState = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var newState = 2;
  var setImage = 'assets/images/dice-2.png';

  void rollDice() {
    setState(() {
      newState = currentState.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$newState.png',
          width: 200,
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(16.0),
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: rollDice,
          child: const StylingText("Roll Dice"),
        )
      ],
    );
  }
}
