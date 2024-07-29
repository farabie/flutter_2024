import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextfieldTutorial extends StatefulWidget {
  const TextfieldTutorial({super.key});

  @override
  State<TextfieldTutorial> createState() => _TextfieldTutorialState();
}

class _TextfieldTutorialState extends State<TextfieldTutorial> {
  TextEditingController textEditingController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField Tutorial"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              // obscureText: true,
              // obscuringCharacter: "*",
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              cursorColor: Colors.green,
              inputFormatters: [
                TextInputFormatter.withFunction(
                  (oldvalue, newValue) => TextEditingValue(
                    text: newValue.text.toUpperCase(),
                  ),
                )
              ],
              controller: textEditingController,
              onChanged: (value) => setState(() {

              }),
            ),
            const SizedBox(
              height: 20,
            ),
             Text(
              textEditingController.text,
              // textEditingController,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
