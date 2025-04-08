import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Dos'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, size: 35), // Icono más grande
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Esta es la segunda pantalla'),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: const TextStyle(fontSize: 25.0),
            backgroundColor: const Color(0xff40c3f6),
            foregroundColor: Colors.white,
          ),
          onPressed: () => Navigator.pushNamed(context, '/Pantalla3'),
          child: const Text('Ir a Pantalla Tres'),
        ),
      ),
    );
  }
}
