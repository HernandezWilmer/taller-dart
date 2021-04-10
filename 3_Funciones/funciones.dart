void main() {
  var resultado1 = obtenerNombre("Wilmer");
  var resultado2 = obtenerNombreDos("Juan");
  var resultado3 = obtenerNombreTres(nombre: "Diego", edad: 25);

  print(resultado1);
  print(resultado2);
  print(resultado3);
}

String obtenerNombre(String valor) {
  return "Mi nombre es $valor";
}

String obtenerNombreDos(String valor) => 'Mi Nombre es $valor';

String obtenerNombreTres({String nombre = 'Pablo', int? edad}) {
  return 'Mi Nombre es $nombre y mi edad es $edad';
}
