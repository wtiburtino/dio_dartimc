import 'dart:convert';
import 'dart:io';

class ConsoleFunctions {
  static String lerConsole(String texto) {
    print(texto);

    var line = stdin.readLineSync(encoding: utf8);
    return line ?? "";
  }

  static double lerConsoleDouble(String texto) {
    var numero = double.tryParse(lerConsole(texto));

    if (numero == null) {
      return 0.0;
    } else {
      return numero;
    }
  }
}
