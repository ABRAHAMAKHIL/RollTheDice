import 'package:flutter/material.dart';

class StylingText extends StatelessWidget {
  const StylingText(this.data, {super.key});
  final String data;
  @override
  Widget build(context) {
    return Text(
      data,
      style: const TextStyle(color: Colors.white, fontSize: 30),
    );
  }
}
