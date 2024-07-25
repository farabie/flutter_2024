import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("02. Row & Column"),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello"),
            Row(
              children: [
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
              ],
            ),
            Text("Hello"),
          ],
        ));
  }
}
