import 'package:calculadora_imc/model/pessoa.dart';
import 'package:calculadora_imc/functions/console_functions.dart';

void main(List<String> arguments) {
  String nome;
  double peso;
  double altura;

  print("** Vamos calcular o IMC **");

  nome = ConsoleFunctions.lerConsole("Informe o nome da pessoa:");

  peso = ConsoleFunctions.lerConsoleDouble("Informe o peso da pessoa:");

  altura = ConsoleFunctions.lerConsoleDouble("Informe a altura da pessoa:");

  Pessoa pessoa = Pessoa(nome, peso, altura);

  print("IMC: ${pessoa.calcularIMC()}!");
  print("Classificação de IMC: ${pessoa.classificacaoIMC()}!");
  print("Pessoa: ${pessoa.toString()}!");
}
