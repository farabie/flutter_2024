import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextfieldTutorial3 extends StatefulWidget {
  const TextfieldTutorial3({super.key});

  @override
  State<TextfieldTutorial3> createState() => _TextfieldTutorial3State();
}

class _TextfieldTutorial3State extends State<TextfieldTutorial3> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: const Text("TextField Tutorial 3"),
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
                //UnderlineInputBorder Menampilkan Border Yang dibagian Bawah Saja
                //OutlineInputBorder Menampilkan Semua Bagian Border
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.yellow.shade600,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey.shade300,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                //Enabled False Untuk Sebagai readonly atau disabled inputan
                // enabled: false,
                focusedBorder: OutlineInputBorder(
                  //Jarak Gap Untuk ketika diklik pada bagian input text pada label
                  gapPadding: 20,
                  borderSide: BorderSide(
                    color: Colors.green.shade900,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                errorBorder: OutlineInputBorder(
                  //Jarak Gap Untuk ketika diklik pada bagian input text pada label
                  borderSide: BorderSide(
                    color: Colors.pink.shade100,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                focusedErrorBorder: OutlineInputBorder(
                  //Jarak Gap Untuk ketika diklik pada bagian input text pada label
                  borderSide: BorderSide(
                    color: Colors.pink.shade600,
                    width: 2,
                  ),
                  gapPadding: 20,
                  borderRadius: BorderRadius.circular(10)
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
