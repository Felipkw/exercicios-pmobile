import 'dart:io';
import 'dart:math';

void main() {
  List<String> nomes = [];
  List<int> idades = [];

  for (var i = 0; i < 3; i++) {
    print('Digite o nome da ${i + 1}ª pessoa');
    String nome = stdin.readLineSync()!;
    nomes.add(nome);

    print('Digite a idade da ${i + 1}ª pessoa');
    int idade = int.parse(stdin.readLineSync()!);
    idades.add(idade);
  }

  do {
    print('Qual operação deve ser realizada?');
    print('1 - Retornar o nome da pessoa mais velha');
    print('2 - Retornar o nome da pessoa mais nova');
    print('3 - Retornar o numero de pessoas com mais de 18 anos');
    print('4 - Sair');
    int decisao = int.parse(stdin.readLineSync()!);

    switch (decisao) {
      case 1:
        print(maisVelha(nomes, idades));
        break;

      case 2:
        print(maisNova(nomes, idades));
        break;

      case 3:
        print(maisDezoito(idades));
        break;

      case 4:
        print('Saindo...');
        return;
    }
  } while (true);
}

String maisVelha(List<String> nomes, List<int> idades) {
  int maior = idades.reduce(max);
  int maiorIdade = idades.indexWhere((number) => number == maior);

  return nomes[maiorIdade];
}

String maisNova(List<String> nomes, List<int> idades) {
  int menor = idades.reduce(min);
  int menorIdade = idades.indexWhere((number) => number == menor);

  return nomes[menorIdade];
}

int maisDezoito(List<int> idades) {
  int maior = 0;

  for (var i = 0; i < idades.length; i++) {
    if (idades[i] >= 18) {
      maior++;
    }
  }

  return maior;
}
