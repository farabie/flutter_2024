import 'package:flutter/material.dart';
import 'package:flutter_2024/ui/pages/container.dart';
import 'package:flutter_2024/ui/pages/container_boxdecoration.dart';
import 'package:flutter_2024/ui/pages/first_flutter.dart';
import 'package:flutter_2024/ui/pages/row_column_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tutorial Flutter Essentials",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blueAccent,
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          widgetMenu(
            "01. Aplikasi Flutter Pertama",
            "02. Row & Column",
            const FirstFlutter(),
            const RowColumn(),
            context: context,
          ),
           widgetMenu(
            "03. Container",
            "04. Container Box Decorations",
            const BelajarContainer(),
            const ContainerBoxDecoration(),
            context: context,
          ),
        ],
      ),
    );
  }
}

Row widgetMenu(String nameWidget, String nameWidget2, Widget widgetMenu,
    Widget widgetMenu2,
    {BuildContext? context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        color: Colors.blue,
        width: 150,
        height: 150,
        margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context!, MaterialPageRoute(builder: (context) {
              return widgetMenu;
            }));
          },
          child: Center(
            child: Text(
              nameWidget,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      Container(
        color: Colors.blue,
        width: 150,
        height: 150,
        margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context!, MaterialPageRoute(builder: (context) {
              return widgetMenu2;
            }));
          },
          child: Center(
            child: Text(
              nameWidget2,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    ],
  );
}
