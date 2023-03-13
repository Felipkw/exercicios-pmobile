import 'dart:io';

void main() {
  List<double> altura = [];
  double mediaAltura = 0;

  for (int i = 0; i < 5; i++) {
    print("Digite a idade da ${i + 1}° pessoa");
    altura.add(double.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < altura.length; i++) {
    mediaAltura = mediaAltura + altura[i];
  }

  mediaAltura = mediaAltura / altura.length;

  print("A média de altura é: $mediaAltura");
}
