import 'dart:math';

class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(String nome, double peso, double altura) {
    setNome(nome);
    setPeso(peso);
    setAltura(altura);
  }

  String get nome => _nome;
  void setNome(String nome) {
    if (nome.isEmpty) throw ArgumentError("Nome não informado!");

    final numero = double.tryParse(nome);
    if (numero != null) throw ArgumentError("Nome inválido!");

    _nome = nome;
  }

  double get peso => _peso;
  void setPeso(double peso) {
    if (peso <= 0) throw ArgumentError("Peso inválido!");
    _peso = peso;
  }

  double get altura => _altura;
  void setAltura(double altura) {
    if (altura <= 0) throw ArgumentError("Altura inválida!");
    _altura = altura;
  }

  String calcularIMC() {
    double imc = _peso / pow(_altura, 2);
    return imc.toStringAsFixed(2);
  }

  String classificacaoIMC() {
    double imc = _peso / pow(_altura, 2);

    if (imc < 16) return "Magreza grave";
    if (imc < 17) return "Magreza moderada";
    if (imc < 18.5) return "Magreza leve";
    if (imc < 25) return "Saudável";
    if (imc < 30) return "Sobrepeso";
    if (imc < 35) return "Obesidade Grau I";
    if (imc < 40) return "Obesidade Grau II (severa)";
    if (imc >= 40) return "Obesidade Grau III (mórbida)";
    return "";
  }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Peso": _peso,
      "Altura": _altura,
      "IMC": "${calcularIMC()} - ${classificacaoIMC()}"
    }.toString();
  }
}
