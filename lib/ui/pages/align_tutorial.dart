import 'package:flutter/material.dart';

class AlignTutorial extends StatelessWidget {
  const AlignTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Align Tutorial"),
      ),
      body: const Align(
        //Alignment (x,y) jika x positif atau 1 maka dia alignment dikanan jika -1 maka dikiri kalau 0 maka ditengah
        //Jika y positif maka dibawah atau jika -1 maka paling atas
        alignment: Alignment(-0.5, -1),
        child: SizedBox(
          width: 300,
          child: Text(
            "It doesnt matter what you are doing here because you are using AlignTutorial",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
