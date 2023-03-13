import 'dart:io';
import 'dart:math';

void main() {
  List<double> numeros = [];

  for (int i = 0; i < 30; i++) {
    print("${i + 1}° número");
    numeros.add(double.parse(stdin.readLineSync()!));
  }

  double menor = numeros.isEmpty ? 0 : numeros.reduce(min);

  print("Menor: $menor");
}
