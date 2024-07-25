import 'package:flutter/material.dart';

class StatelessTutorial extends StatelessWidget {
  const StatelessTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless & StateFull Widget"),
      ),
      body: const Center(
        child: Text("Stateless & StateFull Widget"),
      ),
    );
  }
}
