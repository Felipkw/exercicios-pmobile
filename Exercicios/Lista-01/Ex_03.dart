import 'dart:io';

void main() {
  String a = stdin.readLineSync()!;

  int valor = int.parse(a);
  if (valor % 2 == 0) {
    print("Número é par");
  } else {
    print("Número é impar");
  }
}
