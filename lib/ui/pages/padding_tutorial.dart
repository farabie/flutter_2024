import 'package:flutter/material.dart';

class PaddingTutorial extends StatelessWidget {
  const PaddingTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding tutorial"),
      ),
      body: const Center(
        child: Text("Padding Tutorial"),
      ),
    );
  }
}
