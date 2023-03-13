import 'dart:io';

void main() {
  do {
    double num1 = double.parse(stdin.readLineSync()!);
    double num2 = double.parse(stdin.readLineSync()!);

    print("\n'+' -> ADIÇÃO\n '-' -> SUBTRAÇÃO\n '*' -> MULTIPLICAÇÃO\n '/' -> DIVISÃO");
    print('Escolha uma opção:');
    String opcao = stdin.readLineSync()!;
    switch (opcao) {
      case '+':
        print('Resultado: ${num1 + num2}');
        break;

      case '-':
        print('Resultado: ${num1 - num2}');
        break;

      case '*':
        print('Resultado: ${num1 * num2}');
        break;

      case '/':
        print('Resultado: ${num1 / num2}');
        break;

      default:
        print('Opção inválida');
    }

    print('\nQuer realizar outra operação? S|N');
    String continuar = stdin.readLineSync()!;
    if (continuar == 'N' || continuar == 'n') {
      return;
    }
  } while (true);
}
