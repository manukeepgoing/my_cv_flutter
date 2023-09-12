import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        children: [
          Text(
              "Soy decidido, me gusta mucho el trabajo en equipo y busco crecimiento en el desarrollo móvil tras años de experiencia.",
              style: TextStyle(fontSize: 17)),
        ],
      ),
    );
  }
}
