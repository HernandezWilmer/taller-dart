class Persona {
  String? nombre;
  String? apellido;
  int? edad;

  Persona({this.nombre, this.apellido, this.edad});

  obtenerNombre() => this.nombre;
}

class Empleado extends Persona {
  String puesto;

  Empleado(this.puesto)
      : super(nombre: 'Wilmer', apellido: 'Hernández', edad: 15);
}

class Vehiculo {
  int? puertas;
  String? color;

  Vehiculo();
}

void main() {
  var persona = Persona(nombre: "Wilmer", apellido: "Hernández", edad: 15);
  print(persona);

  var empleado = Empleado("Cajero");
  print(empleado.obtenerNombre());
}
