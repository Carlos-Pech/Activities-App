import 'package:flutter/material.dart';

class SignOff extends StatelessWidget {
  const SignOff({
    super.key,
    required this.myColor,
  });

  final Color myColor;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
        child: ElevatedButton(
          onPressed: () {
            // Cerrar sesión
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: myColor,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(15), // Ajusta el radio como necesites
            ),
            fixedSize: const Size(250, 45),
          ),
          child: const Text('Cerrar sesión'),
        ),
      ),
    );
  }
}
