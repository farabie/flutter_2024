import 'dart:developer';

import 'package:flutter/material.dart';

class ScrollPageView extends StatelessWidget {
  const ScrollPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade100,
        title: const Text(
          'Single Child Scroll View & ListView',
        ),
      ),
      body: ListView(
        children: createContainer(),
      ),
    );
  }
}

/*
  Perbedaan Singe Child Scroll View & Lits View
  1. Untuk List View Untuk Lebarnya Hampir Sama dengan selebar layarnya sedangkan Scroll View
  Mengikuti Container Yang Sudah ditentukan lebar dan tingginya
  2. Pada List View Jumlah Container yang dirender adalah sebagiannya sedangka single child scroll view
     merender semuanya

  UnconstrainedBox merupakan widget yang tidak memberikan batasan apapun dalam widget nya sehingga widget tersebut
  tidak memiliki batasan

  Single Chil Scroll View Dibuat Untuk Content Yang Pasti dilihat seluruhnya atau di render seluruhnya
  Sedangkan List View Dibuat Untuk Content Yang Hanya Di Lihat Sebagian Saja Sehingga Sistem Tidak Perlu Merender Semuanya
  Biasanya List View Dibuat Untuk Membungkus Content Berita ataupun Postingan Instagram
 */

List<Widget> createContainer() => List.generate(
      30,
      (index) => Builder(
        builder: (context) {
          log("Rendering Container $index");
          return UnconstrainedBox(
            child: Container(
              margin: const EdgeInsets.all(20),
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(
                child: Text(
                  (index + 1).toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
