import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int numale = random.nextInt(10) + 1; 
  int tentativas = 0;
  print('Adivinhe o número de 1 a 10:');
  while (true) {
    stdout.write('Digite seu palpite: ');
    String entrada = stdin.readLineSync()!;
    int? palpite = int.tryParse(entrada);
    if (palpite == null) {
      print('Por favor, digite um número válido.');
      continue;
    }
    tentativas++;
    if (palpite < numale) {
      print('O número é maior que isso.');
    } else if (palpite > numale) {
      print('O número é menor que isso.');
    } else {
      print('Você acertou! O número era $numale. Parabéns!');
      print('Tentativas: $tentativas');
      break;
    }
  }
}
