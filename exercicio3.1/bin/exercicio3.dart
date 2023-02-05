import 'dart:io';

void main() {
  num? salarioFinal;
  print('Digite o código equivalente ao seu cargo, sendo:\n 101- Gerente;\n 102- Engenheiro;\n 103- Técnico;\n 104- Outros.');
  num cargo = num.parse(stdin.readLineSync()!);
  print('Qual é o seu salário atual?');
  num salarioAtual = num.parse(stdin.readLineSync()!);

  switch (cargo){
    case 101:
      print('O seu salário atual é de $salarioAtual.\nVocê receberá 10% de aumento.');
      salarioFinal = (salarioAtual* 0.1) + salarioAtual;
      break;
    case 102:
      print('O seu salário atual é de $salarioAtual.\nVocê receberá 20% de aumento.');
      salarioFinal = (salarioAtual* 0.2) + salarioAtual;
      break;
    case 103:
      print('O  seu salário atual é de $salarioAtual.\nVocê receberá 30% de aumento.');
      salarioFinal = (salarioAtual* 0.3) + salarioAtual;
      break;
    case 104:
      print('O  seu salário atual é de $salarioAtual.\nVocê receberá 40% de aumento.');
      salarioFinal = (salarioAtual* 0.4) + salarioAtual;
      break;
    default:
      print('O seu salário atual é de $salarioAtual.\nVocê receberá 20% de aumento.');
      salarioFinal = (salarioAtual* 0.2) + salarioAtual;
      break;
  }
  num diferencaSalarial = (salarioFinal-salarioAtual);
  print ('Seu salário após o aumento será $salarioFinal.\nA diferença entre seu atual salário e o salário após aumento é de $diferencaSalarial.');
}