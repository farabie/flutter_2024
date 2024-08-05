import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextfieldTutorial2 extends StatefulWidget {
  const TextfieldTutorial2({super.key});

  @override
  State<TextfieldTutorial2> createState() => _TextfieldTutorial2State();
}

class _TextfieldTutorial2State extends State<TextfieldTutorial2> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: const Text("TextField Tutorial 2"),
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
                icon: Container(
                  width: 20,
                  height: 20,
                  color: Colors.blue.shade900,
                ),
                prefixIcon: const Icon(Icons.person),
                prefixIconColor: Colors.blue.shade900,
                // prefixText: "Name: ",
                // prefixStyle: TextStyle(
                //   fontWeight: FontWeight.bold,
                //   color: Colors.blue.shade900,
                // ),
                prefix: Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.red.shade900,
                  child: const Text(
                    'Name: ',
                    style: TextStyle(color: Colors.yellow),
                  ),
                ),
                suffixIcon: const Icon(Icons.coffee),
                suffixIconColor: Colors.blue.shade900,
                // suffixText: "SUFFIX",
                // suffixStyle: TextStyle(
                //   fontWeight: FontWeight.bold,
                //   color: Colors.blue.shade900,
                // ),
                suffix: Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.red.shade900,
                  child: const Text(
                    "SUFFIX",
                    style: TextStyle(
                      color: Colors.yellow,
                    ),
                  ),
                ),
                fillColor: Colors.grey.shade300,
                filled: true,
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
