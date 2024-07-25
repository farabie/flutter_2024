import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// class StatelessTutorial extends StatelessWidget {
//   const StatelessTutorial({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Stateless & StateFull Widget"),
//       ),
//       body: const Center(
//         child: Text("Stateless & StateFull Widget"),
//       ),
//     );
//   }
// }

class StateFullStalessTutorial extends StatefulWidget {
  const StateFullStalessTutorial({super.key});

  @override
  State<StateFullStalessTutorial> createState() =>
      _StateFullStalessTutorialState();
}

class _StateFullStalessTutorialState extends State<StateFullStalessTutorial> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull & Stateless Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$number",
              style: GoogleFonts.poppins(
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  number++;
                });
                // log("$number");
              },
              child: const Text("Increment"),
            ),
             ElevatedButton(
              onPressed: () {
                setState(() {
                  number--;
                });
                // log("$number");
              },
              child: const Text("Decrement"),
            )
          ],
        ),
      ),
    );
  }
}
