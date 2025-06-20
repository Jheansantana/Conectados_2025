import 'dart:io';

void main() {
    stdout.write('Digite um numero: ');
    String? parouimpar = stdin.readLineSync();
    int n1 = int.parse(parouimpar!);
    print(n1.isEven);
}
