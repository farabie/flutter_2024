import 'package:flutter/material.dart';

class ContainerBoxDecoration extends StatelessWidget {
  const ContainerBoxDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Box Decoration"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  // color: Colors.red,
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.yellow,
                      Colors.red,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  // color: Colors.red,
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/yt-7HyNicbDicyoE-V2NvVkvnu8=/65x57:900x613/1200x800/data/photo/2023/10/15/652bda26d67e9.jpg",
                    ),
                    fit: BoxFit.cover
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 6,
                      spreadRadius: 1,
                      offset: Offset(-2, 2)
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  // color: Colors.red,
                  border: Border.all(color: Colors.black, width: 3),
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crops/yt-7HyNicbDicyoE-V2NvVkvnu8=/65x57:900x613/1200x800/data/photo/2023/10/15/652bda26d67e9.jpg",
                    ),
                    fit: BoxFit.cover
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 6,
                      spreadRadius: 1,
                      offset: Offset(-2, 2)
                    ),
                  ],
                  shape: BoxShape.circle
                ),
                
              ),
            ],
          ),
        ],
      ),
    );
  }
}
