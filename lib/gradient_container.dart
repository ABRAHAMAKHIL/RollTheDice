import 'package:flutter/material.dart';
import 'package:diceroll/DiceRoller.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colorHome = [
    Color.fromARGB(255, 14, 0, 42),
    Color(0xff5b0060),
    Color(0xff870160),
    Color.fromARGB(255, 195, 44, 107),
    Color(0xffca485c),
    Color(0xffe16b5c),
    Color(0xfff39060),
    Color(0xffffb56b)
  ];
  GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: colorHome, begin: Alignment.topCenter)),
        child: const Center(child: DiceRoller()));
  }
}
