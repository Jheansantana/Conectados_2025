import 'dart:io';

void main() {
  double soma = 0;
  for (int i = 1; i <= 5; i++) {
    double nota;
    while (true) {
      print('Digite a nota $i do aluno(entre 0 e 10):');
      String entrada = stdin.readLineSync()!;
      nota = double.parse(entrada);
      if (nota >= 0 && nota <= 10) {
        break;
      } else {
        print('Nota inválida. Tente novamente.');
      }
    }
    soma = soma + nota;
  }
  double media = soma / 5;
  print('\nMédia: $media');
  if (media >= 6) {
    print('Aprovado.');
  } else {
    print('Reprovado.');
  }
}
