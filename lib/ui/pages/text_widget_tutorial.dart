import 'package:flutter/material.dart';

class TextWidgetTutorial extends StatelessWidget {
  const TextWidgetTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Widget Tutorial"),
      ),
      body: const Center(
        child: Text("Text Widget Tutorial"),
      ),
    );
  }
}
