import 'dart:io';

void main() {
  print('Digite o primeiro valor: ');
  double valorA = double.parse(stdin.readLineSync()!);
  print('Digite o segundo valor');
  double valorB = double.parse(stdin.readLineSync()!);

  print('Qual operação deve ser realizada?');
  print('1 - somar');
  print('2 - subtrair');
  print('3 - multiplicar');
  print('4 - dividir');

  int decisao = int.parse(stdin.readLineSync()!);

  switch (decisao) {
    case 1:
      print(somar(valorA, valorB));
      break;

    case 2:
      print(subtrair(valorA, valorB));
      break;

    case 3:
      print(multiplicar(valorA, valorB));
      break;

    case 4:
      print(dividir(valorA, valorB));
      break;

    default:
      print('Tu é burro man');
  }
}

double somar(double a, double b) => a + b;
double subtrair(double a, double b) => a - b;
double multiplicar(double a, double b) => a * b;
double dividir(double a, double b) => a / b;
