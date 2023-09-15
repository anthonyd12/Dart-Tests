// ignore_for_file: file_names

class NomeInvalidoException implements Exception {
  String error() => "Nome Inválido";

  @override
  String toString() {
    // TODO: implement toString
    return "NomeInvalidoException: ${error()}";
  }
}