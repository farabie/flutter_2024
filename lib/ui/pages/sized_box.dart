import 'package:flutter/material.dart';

class SizedBoxTutorial extends StatelessWidget {
  const SizedBoxTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sized Box Tutorial"),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              width: 200,
              child: Text("Hello My Name is Muhammad Farabie"),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: Text("Welcome to youtube channel"),
            )
          ],
        ),
      ),
    );
  }
}
