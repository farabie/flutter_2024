import 'package:flutter/material.dart';

class StackTutorial extends StatelessWidget {
  const StackTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Tutorial"),
      ),
      body: Container(
        color: Colors.yellow.shade100,
        width: 300,
        height: 300,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              color: Colors.grey.withOpacity(0.3),
              child: Container(
                margin: const EdgeInsets.all(0),
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Container(
              color: Colors.grey.withOpacity(0.3),
              child: Container(
                margin: const EdgeInsets.all(20),
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
            ),
            Container(
              color: Colors.grey.withOpacity(0.3),
              child: Container(
                margin: const EdgeInsets.all(40),
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
