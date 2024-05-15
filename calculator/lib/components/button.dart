import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromARGB(82, 82, 82, 1);
  static const DEFAULT = Color.fromARGB(112, 112, 112, 1);
  static const OPERATION = Color.fromARGB(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;

  const Button({
    super.key,
    required this.text,
    this.big = false,
    this.color = DEFAULT,
  });

  const Button.big({
    super.key,
    required this.text,
    this.big = true,
    this.color = DEFAULT,
  });

  const Button.operation({
    super.key,
    required this.text,
    this.big = false,
    this.color = OPERATION,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
