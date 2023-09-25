import 'package:flutter/material.dart';
import 'package:diceroll/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: GradientContainer(),
          appBar: AppBar(title: const Text('Roll The Dice'))),
    ),
  );
}
