import 'dart:io';

void main() {
  String prilado = stdin.readLineSync()!;
  String seglado = stdin.readLineSync()!;
  String terlado = stdin.readLineSync()!;

  int lado1 = int.parse(prilado);
  int lado2 = int.parse(seglado);
  int lado3 = int.parse(terlado);

  if (lado1 == lado2 && lado2 == lado3) {
    print('Equilátero');
  } else if ((lado1 == lado2 && lado1 != lado3) ||
      (lado2 == lado3 && lado2 != lado1) ||
      (lado3 == lado1 && lado3 != lado2)) {
    print('Isósceles');
  } else {
    print('Escaleno');
  }
}
