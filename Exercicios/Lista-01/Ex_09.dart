import 'dart:io';

void main() {
  List<double> altura = [];
  double mediaAltura = 0;
  int i = 0;
  do {
    i++;
    print("Digite a idade da ${i}° pessoa");
    double lerAltura = double.parse(stdin.readLineSync()!);
    if (lerAltura == -1) {
      break;
    } else {
      altura.add(lerAltura);
    }
  } while (true);

  for (int i = 0; i < altura.length; i++) {
    mediaAltura = mediaAltura + altura[i];
  }
  if (mediaAltura != 0) {
    mediaAltura = mediaAltura / altura.length;
  }

  print("A média de altura é: $mediaAltura");
}
