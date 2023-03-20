import 'dart:io';

void main() {
  double valor = double.parse(stdin.readLineSync()!);
  print(parOuImpar(valor));
}

String parOuImpar(double a) {
  if (a % 2 == 0) {
    return 'Par';
  } else {
    return 'Impar';
  }
}
