import 'dart:io';

void main() {
  int pares = 0;
  do {
    print("Digite um número: ");
    double numero = double.parse(stdin.readLineSync()!);
    if (numero % 2 == 0) {
      pares++;
    }

    print('Continuar? S | N ');
    String continuar = stdin.readLineSync()!;
    if (continuar == 'N' || continuar == 'n') {
      break;
    }
  } while (true);

  print('Números pares digitados: $pares');
}
