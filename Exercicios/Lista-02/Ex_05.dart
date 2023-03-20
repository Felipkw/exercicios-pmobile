import 'dart:io';
void main() {
  print('Digite a base');
  double base = double.parse(stdin.readLineSync()!);
  print('Digite a altura');
  double altura = double.parse(stdin.readLineSync()!);

  print('Qual operação deve ser realizada?');
  print('1 - Area');
  print('2 - Perimetro');
  int decisao = int.parse(stdin.readLineSync()!);
  
  switch (decisao) {
    case 1:
      print(calcularArea(base, altura));
      break;

    case 2:
      print(calcularPerimetro(base, altura));
      break;
  }
}

double calcularArea(double base, double altura) => base * altura;
double calcularPerimetro(double base, double altura) => 2 * (base + altura);
