import 'package:flutter/material.dart';

class Resuablebutton extends StatelessWidget {
  final VoidCallback onPressed;
  const Resuablebutton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(250, 50),
        backgroundColor: Colors.deepPurple,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      child: Text(
        "Login in",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
