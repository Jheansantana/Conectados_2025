import 'dart:io';

void main() {
  stdout.write('Digite um numero: ');
  String? num1 = stdin.readLineSync();
  double n1 = double.parse(num1!);
  stdout.write('Digite o segundo número: ');
  String? num2 = stdin.readLineSync();
  double n2 = double.parse(num2!);
  stdout.write('Digite a operação (+, -, *, /): ');
  String ope = stdin.readLineSync()!;
  double result = 0;
  switch (ope) {
    case '+':
      result = n1 + n2;
      break;
    case '-':
      result = n1 - n2;
      break;
    case '*':
      result = n1 * n2;
      break;
    case '/':
      result = n1 / n2;
      break;
  }
  print('Resultado: $result');
}
