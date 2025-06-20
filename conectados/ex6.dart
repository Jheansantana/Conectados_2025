import 'dart:io';

void main() {
  stdout.write('Digite sua idade: ');
     int idade = int.parse(stdin.readLineSync()!);
  if (idade < 18) {
    print("Você é menor de idade");
  } else {
    print("Você é maior de idade");
  }
}
