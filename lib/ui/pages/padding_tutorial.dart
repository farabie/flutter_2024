import 'package:flutter/material.dart';

class PaddingTutorial extends StatelessWidget {
  const PaddingTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Padding tutorial"),
        ),
        body: const Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
              child: Text("Lorem"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
              child: Text("Ipsum"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
              child: Text("Dolor"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
              child: Text("Sit"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
              child: Text("Amet"),
            )
          ],
        ));
  }
}
