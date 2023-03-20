import 'dart:io';

void main() {
  print('Digite o salário do funcionario');
  double salario = double.parse(stdin.readLineSync()!);
  print(calculoImposto(salario));
}

int calculoImposto(double salario) {
  int imposto = 0;

  if (salario <= 2000) {
    imposto = 0;
  } else if (salario >= 2000 && salario <= 3500) {
    imposto = 15;
  } else if (salario >= 3500 && salario <= 5000) {
    imposto = 22;
  } else {
    imposto = 30;
  }

  return imposto;
}
