import 'dart:io';
void main() {
  print('Qual operação deve ser realizada?');
  print('1 - F > C');
  print('2 - K > C');
  int decisao = int.parse(stdin.readLineSync()!);

  switch (decisao) {
    case 1:
      print('Digite os graus');
      double graus = double.parse(stdin.readLineSync()!);
      print(calcularFCelsius(graus));
      break;

    case 2:
      print('Digite os graus');
      double graus = double.parse(stdin.readLineSync()!);
      print(calcularKCelsius(graus));
      break;
  }
}

double calcularFCelsius(double graus) => 5 * (graus - 32) / 9;
double calcularKCelsius(double graus) => graus - 273;
