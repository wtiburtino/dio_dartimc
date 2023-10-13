import 'package:calculadora_imc/calculadora_imc.dart' as imcapp;
import 'package:calculadora_imc/model/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Obter Classificação Saudável', () {
    Pessoa pessoa = Pessoa("Maria", 50, 1.50);
    expect(imcapp.classificacaoIMC(pessoa), "Saudável");
  });

  test('Obter Classificação Magreza leve', () {
    Pessoa pessoa = Pessoa("Maria", 40, 1.50);
    expect(imcapp.classificacaoIMC(pessoa), "Magreza leve");
  });

  test('Calcular IMC', () {
    Pessoa pessoa = Pessoa("Maria", 50, 1.50);
    expect(imcapp.calcularIMC(pessoa), "22.22");
  });

  test('Calcular IMC', () {
    Pessoa pessoa = Pessoa("Maria", 40, 1.50);
    expect(imcapp.calcularIMC(pessoa), "17.78");
  });
}
