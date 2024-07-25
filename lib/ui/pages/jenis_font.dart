import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class JenisFont extends StatelessWidget {
  const JenisFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jenis Font"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Hello My name is khan and I will be the one",
              style: TextStyle(
                fontFamily: "Montserrat",
                // fontWeight:  FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
             Text(
              "Hello My name is testing and I will be the one asdasdsad",
              style: GoogleFonts.aclonica().copyWith(
                fontSize: 14,
                overflow: TextOverflow.ellipsis
              )
            ),
          ],
        ),
      ),
    );
  }
}
