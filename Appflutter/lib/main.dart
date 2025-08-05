import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            coluna(Icons.home, 'Início', 'Página principal'),
            coluna(Icons.star, 'Favoritos', 'Itens salvos'),
            coluna(Icons.settings, 'Config', 'Preferências'),
          ],
        ),
      ),
    );
  }

  Widget coluna(IconData icone, String titulo, String desc) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icone, size: 30),
        Text(titulo),
        Text(desc, style: const TextStyle(color: Color.fromARGB(255, 61, 18, 189))),
      ],
    );
  }
}