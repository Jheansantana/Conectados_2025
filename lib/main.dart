import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowMaterialGrid: false,
      title: 'Calculadora Simples',
      home: Calculadora(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  CalculadoraState createState() => CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  final TextEditingController n1 = TextEditingController();
  final TextEditingController n2 = TextEditingController();
  String resultado = '';

  void somar() {
    double a = double.parse(n1.text);
    double b = double.parse(n2.text);
    setState(() {
      resultado = 'Resultado: ${a + b}';
    });
  }

  void subtrair() {
    double a = double.parse(n1.text);
    double b = double.parse(n2.text);
    setState(() {
      resultado = 'Resultado: ${a - b}';
    });
  }

  void multiplicar() {
    double a = double.parse(n1.text);
    double b = double.parse(n2.text);
    setState(() {
      resultado = 'Resultado: ${a * b}';
    });
  }

  void dividir() {
    double a = double.parse(n1.text);
    double b = double.parse(n2.text);
    setState(() {
      resultado = b != 0 ? 'Resultado: ${a / b}' : 'Erro: divisão por zero';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculadora')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: n1,
              decoration: const InputDecoration(labelText: 'Número 1'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: n2,
              decoration: const InputDecoration(labelText: 'Número 2'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: somar, child: const Text('+')),
                ElevatedButton(onPressed: subtrair, child: const Text('-')),
                ElevatedButton(onPressed: multiplicar, child: const Text('×')),
                ElevatedButton(onPressed: dividir, child: const Text('÷')),
              ],
            ),
            const SizedBox(height: 20),
            Text(resultado, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
