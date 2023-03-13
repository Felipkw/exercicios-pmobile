import 'dart:io';

void main() {
  print('Digite seu ano de nascimento:');
  int anoNasc = int.parse(stdin.readLineSync()!);
  print('Digite o ano atual');
  int anoAtual = int.parse(stdin.readLineSync()!);

  int idade = anoAtual - anoNasc;

  print('A idade do usuário é: $idade');
}
