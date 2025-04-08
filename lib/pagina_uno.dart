import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Uno'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            textStyle: const TextStyle(fontSize: 25.0),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          onPressed: () => Navigator.pushNamed(context, '/Pantalla2'),
          child: const Text('Ir a Pantalla Dos'),
        ),
      ),
    );
  }
}
