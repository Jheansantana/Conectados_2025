import 'dart:io';

void main() {
  stdout.write('Digite uma palavra: ');
  String? vogal = stdin.readLineSync()!;
  int contavogal = 0;
  List<String> vogais = ['a', 'e', 'i', 'o', 'u'];
  for (int i = 0; i < vogal.length; i++) {
    String letra = vogal[i].toLowerCase();
    if (vogais.contains(letra)) {
      contavogal++;
    }
  }
  print('A palavra "$vogal" contém $contavogal vogais.');
}