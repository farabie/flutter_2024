import 'package:flutter/material.dart';

class FirstFlutter extends StatelessWidget {
  const FirstFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi First Flutter"),
      ),
      body: const Center(
        child: Text("Hello Cruel Flutter Esential"),
      ),
    );
  }
}
