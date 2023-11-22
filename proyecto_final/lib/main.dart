import 'package:flutter/material.dart';
import 'package:proyecto_final/pantallas/inicio_de_sesion/InicioSesion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InicioSesion(),
    );
  }
}
