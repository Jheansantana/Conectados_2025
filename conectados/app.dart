import 'dart:io';

void main() {
  stdout.write('Digite o primeiro numero:');
  String? input1 = stdin.readLineSync();
  int num1 = int.parse(input1!);
  stdout.write('Digite o segundo número: ');
  String? input2 = stdin.readLineSync();
  int num2 = int.parse(input2!);
  int soma = num1 + num2;
  print('A soma de $num1 e $num2 é $soma.');
}
