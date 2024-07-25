import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextWidgetTutorial extends StatelessWidget {
  const TextWidgetTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Widget Tutorial"),
      ),
      body: const Center(
        child: SizedBox(
          width: 200,
          child: Text(
            "Hello My Nama is Muhammad Farabie & I Study Flutter Tutorial 2024",
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              // backgroundColor: Colors.red,
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              shadows: [
                Shadow(
                  blurRadius: 0,
                  color: Colors.black,
                  offset: Offset(3, 3)
                )
              ],
              letterSpacing: 0.5,
              wordSpacing: 2,
              decoration: TextDecoration.underline,
              decorationThickness: 1,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.wavy,
            ),
          ),
        ),
      ),
    );
  }
}
