import 'package:flutter/material.dart';

class WrapTutorial extends StatelessWidget {
  const WrapTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Wrap Tutorial"),
        ),
        body: Container(
          //Double infinty untuk double yang tidak terbatas
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey.shade500,
          child: Wrap(
            // Untuk Mengubah Arahnya Bisa Menggunakan direction Axis.vertical ke bawah
            // Secara default untuk wrap dia menggunakan Axis.horizontal
            direction: Axis.vertical,
          
            //Dalam wrap bisa memberikan jarak dengan menggunakan spacing
            //Spacing ini mengatur sesuai dengan directionnya jika vertical berarti spacing dibawah kalau horizontal spacing ke kanan
            spacing: 10,
            //Kalau runspacing dia mengatur jaraknya kebawah kalau horizontal, kalau veritacal di kesamping runspaccing nya 
            runSpacing: 20,
            //Alignment mengatur aligmeent kesamping kalau direction horizontal kalau direction vertical mengatur secara vertical
            // alignment: WrapAlignment.end,
            //Kalau runAlignment kebalikannya kalau direction horizontal mengatur aligmenet secara vertical kalau vertical mengatur alignment secara horizontal
            //Kalau runAlignment dan Alignment Mengatur posisi kumpulan widget
            runAlignment: WrapAlignment.end,
            //Kalau crossAlignment mengatur posisi per widgetnnya
            //Kalau crossAxisAlignment dia mengubah posisi untuk element dalam wrapnya bukan mengatus posisi element wrapnya
            crossAxisAlignment: WrapCrossAlignment.center,
            //Vertical Direction mengatur penyusunan widgetnya, yang biasanya dari 1, 2, 3 menjadi 8, 7
            //Secara default vertical direction menggunakan verticalDirection down
            verticalDirection: VerticalDirection.up,
            children: List.generate(
              8,
              (index) => Container(
                  width: index % 2 == 0 ? 200 : 150,
                  height: index % 2 == 0 ? 200 : 150,
                  // margin: const EdgeInsets.symmetric(horizontal: 10,),
                  color: index % 2 == 0 ? Colors.red : Colors.blue,
                  child: Center(
                    child: Text(
                      (index + 1).toString(),
                      style: const TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
          ),
        ));
  }
}
