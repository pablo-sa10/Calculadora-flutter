import 'package:flutter/material.dart';
import '../components/keybord.dart';
import '../components/display.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Display(
          text: '1123',
        ),
        Keybord(
        ),
      ],
    );
  }
}
