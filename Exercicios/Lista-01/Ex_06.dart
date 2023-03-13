import 'dart:io';
import 'dart:math';

void main() {
  List<double> numeros = [];

  for (int i = 0; i < 5; i++) {
    print("${i + 1}° número");
    numeros.add(double.parse(stdin.readLineSync()!));
  }

  double maior = numeros.isEmpty ? 0 : numeros.reduce(max);
  double menor = numeros.isEmpty ? 0 : numeros.reduce(min);

  print("Maior: $maior");
  print("Menor: $menor");
}
