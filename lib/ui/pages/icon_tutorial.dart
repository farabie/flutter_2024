import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IconTutorial extends StatelessWidget {
  const IconTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icon Tutorial"),
      ),
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              Icons.home,
              size: 54,
              color: Colors.orange,
              shadows: [
                BoxShadow(
                  offset: Offset(3, 3),
                  blurRadius: 8,
                  color: Colors.black54,
                )
              ],
            ),
            Icon(
              MdiIcons.googleDownasaur,
              size: 54,
              color: Colors.black,
              shadows: const [
                BoxShadow(
                  offset: Offset(3, 3),
                  blurRadius: 8,
                  color: Colors.black54,
                )
              ],
            ),
            Icon(
              MdiIcons.netflix,
              size: 54,
              color: Colors.red.shade900,
            ),
          ],
        ),
      ),
    );
  }
}
