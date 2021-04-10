void main() {
  print(obtenerNombre("Wilmer"));
}

String obtenerNombre(String? nombre) {
  if (nombre == "Juan") {
    throw FormatException("El nombre no puede ser $nombre");
  }
  return "Mi nombre es $nombre";
}
