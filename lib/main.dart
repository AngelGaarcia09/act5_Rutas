import 'package:flutter/material.dart';
import 'package:garciaRutas/pagina_dos.dart';
import 'package:garciaRutas/pagina_uno.dart';
import 'package:garciaRutas/paina_tres.dart';

void main() => runApp(const MyRutasApp());

class MyRutasApp extends StatelessWidget {
  const MyRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navegación entre Páginas",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20, // Tamaño aumentado a 20
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
          toolbarHeight: 70, // Altura aumentada del AppBar
        ),
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => const PantallaUno(),
        '/Pantalla2': (context) => const PantallaDos(),
        '/Pantalla3': (context) => const PantallaTres(),
      },
    );
  }
}
