import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({super.key});

  @override
  Widget build(BuildContext context) {
    Color myColor = const Color(0xFF0247E1);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        width: 300, // Ancho fijo de 300 píxeles
        height: 80,
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Marzo/02/2023",
                    style: TextStyle(color: (Colors.white)),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "6 de 10 tareas realizadas",
                    style: TextStyle(
                      color: (Colors.white),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SvgPicture.asset(
              'assets/images/thinking girl.svg',
              fit: BoxFit.cover,
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
