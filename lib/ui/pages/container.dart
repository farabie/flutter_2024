import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(left: 10, right: 10),
                // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Colors.red,
                child: Container(
                  color: Colors.orange,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
            ],
          ),
           Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blueAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
