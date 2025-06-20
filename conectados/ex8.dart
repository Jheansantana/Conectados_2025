import 'dart:io';

void main() {
  stdout.write('Digite um numero inteiro positivo: ');
  int num1 = int.parse(stdin.readLineSync()!);
  int fator = 1;
  if (num1 > 0) {
    for (int i = 1; i <= num1; i++) {
      fator *= i;
    }
    print('o fatorial do numero $num1 é $fator');
  } else {
    print('Numero invalido, coloque um valor positivo.');
  }

}