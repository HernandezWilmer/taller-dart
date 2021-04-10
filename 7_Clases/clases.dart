class Persona {
  String? nombre;
  String? apellido;
  int? edad;

  Persona({this.nombre, this.apellido, this.edad});

  obtenerNombre() => this.nombre;
}

class Empleado extends Persona with Aeropuerto {
  String? puesto;

  Empleado(this.puesto)
      : super(nombre: 'Wilmer', apellido: 'Hernández', edad: 15);

  Empleado.fromJson(this.puesto);
}

class Trabajador implements Persona {
  @override
  String? apellido;

  @override
  int? edad;

  @override
  String? nombre;

  @override
  obtenerNombre() {
    throw UnimplementedError();
  }
}

mixin Aeropuerto {
  int? salas;

  nombreDelAeropuerto(String valor) {
    return "El nombre es $valor";
  }
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

  print(empleado.nombreDelAeropuerto("ElDorado"));
}
