void main() {
  try {
    print(obtenerNombreDos("Juan"));
  } on FormatException catch (e) {
    print("Se produjo un error de tipo FormatException.");
  } catch (e) {
    print("Se produjo un error sin tipo.");
  } finally {
    print("Esto es el finally");
  }
}

String obtenerNombre(String? nombre) {
  if (nombre == "Carlos") {
    throw FormatException("El nombre no puede ser $nombre");
  }
  return "Mi nombre es $nombre";
}

String obtenerNombreDos(String? nombre) {
  if (nombre == "Juan") {
    throw ("El nombre no puede ser $nombre");
  }
  return "Mi nombre es $nombre";
}
