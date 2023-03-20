import 'dart:io';

void main() {
  List<double> lista = [];

  print('Digite o tamanho da lista:');
  int tam = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < tam; i++) {
    print('Digite o ${i + 1}º número');
    double valor = double.parse(stdin.readLineSync()!);
    lista.add(valor);
  }

  print('Media dos valores: ${Media(lista)}');
}

double Media(List<double> lista) {
  double media = 0;

  for (int i = 0; i < lista.length; i++) {
    media = media + lista[i];
  }

  media = media / lista.length;

  return media;
}
