import 'dart:io';
import 'dart:math';

void main() {
  List<double> numeros = [];
  do {
    print("Digite um número: ");
    numeros.add(double.parse(stdin.readLineSync()!));

    print('Deseja continuar? S|N');
    String continuar = stdin.readLineSync()!;
    if (continuar == 'N' || continuar == 'n') {
      break;
    }
  } while (true);

  double maior = numeros.isEmpty ? 0 : numeros.reduce(max);
  print("\nMaior valor: $maior");
}
