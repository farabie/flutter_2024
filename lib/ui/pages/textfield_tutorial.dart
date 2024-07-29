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
        backgroundColor: Colors.grey.shade300,
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
              onChanged: (value) => setState(() {}),
              decoration: InputDecoration(
                hintText: "Please enter any text here",
                hintStyle: TextStyle(
                    color: Colors.red.shade300, fontWeight: FontWeight.normal),
                // hintMaxLines: 2,
                // labelText: "Text Input",
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                floatingLabelAlignment: FloatingLabelAlignment.center,
                //Always artinya dia selalu diatas
                //Auto default
                //Never artinya tidak menggunakan behavior
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                label: Container(
                  padding: const EdgeInsets.all(3),
                  color: Colors.red.shade100,
                  child: Text(
                    "Input Text",
                    style: TextStyle(
                      color: Colors.red.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                helperText: "This is a helper text ",
                helperStyle: const TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Colors.black,
                ),
                counterText: "${textEditingController.text.length}",
                counterStyle: TextStyle(
                  color: Colors.red.shade900,
                ),
                counter: Container(
                  padding: const EdgeInsets.all(3),
                  color: Colors.red.shade900,
                  child: Text(
                    "${textEditingController.text.length}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // errorText: 'This is error text This is error text This is error text This is error text',
                errorStyle: const TextStyle(
                    color: Colors.pink, fontWeight: FontWeight.bold),
                errorMaxLines: 2,
                error: Container(
                  padding: const EdgeInsets.all(3),
                  color: Colors.grey.shade300,
                  child: const Text(
                    "This is an error message",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(),
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
