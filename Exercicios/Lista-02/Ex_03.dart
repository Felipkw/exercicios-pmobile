import 'dart:io';

void main() {
  String valor = stdin.readLineSync()!;
  print(numeroVogais(valor));
}

int numeroVogais(String a) {
  List<String> vogais = [
    'a',
    'e',
    'i',
    'o',
    'u',
    'A',
    'E',
    'I',
    'O',
    'U',
  ];
  int cont = 0;

  for (var i = 0; i < a.length; i++) {
    for (var j in vogais) {
      if (j == a[i]) {
        cont++;
      }
    }
  }

  return cont;
}
