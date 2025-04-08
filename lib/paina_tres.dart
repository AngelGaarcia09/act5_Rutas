import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Tres'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, size: 35), // Icono más grande
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Esta es la Tercera pantalla'),
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
            backgroundColor: const Color(0xff40dbf6),
            foregroundColor: Color(0xff000000),
          ),
          onPressed: () => Navigator.pop(context),
          child: const Text('Regresar a Pantalla uno'),
        ),
      ),
    );
  }
}
