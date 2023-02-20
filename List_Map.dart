class Alumno {
  String nombre;
  String noCtrl;
  String apellido;

  Alumno({required this.nombre, required this.apellido, required this.noCtrl});

  Alumno.nombre(this.nombre, this.apellido) : this.noCtrl = "NoId";

  Alumno.noCtrl(this.noCtrl)
      : this.nombre = "NoName",
        this.apellido = "NoSecondName";

  Alumno.all(this.nombre, this.apellido, this.noCtrl);

  Alumno.json(Map<String, String> alumno):
       this.nombre = alumno["nombre"] ?? "NoName",
        this.apellido = alumno["apellido"] ?? "NoSecondName",
        this.noCtrl = alumno["noCtrl"] ?? "000";
  

  set Nombre(String name) {
    this.nombre = name;
  }

  String get fullName {
    return "${this.nombre} ${this.apellido}";
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Name: ${this.nombre}\nApellido: ${this.apellido}\nNo.Control: ${this.noCtrl}";
  }
}

class Datos {
  int dato;
  int subdato;
  Datos({required this.dato, required this.subdato});

  @override
  String toString() {
    // TODO: implement toString
    return "Dato: ${this.dato}, Subdato: ${this.subdato}";
  }
}

abstract class Persona {
  String? nombre;
  String? apellido;

  Persona({this.nombre, this.apellido});

  String get Nombre => this.nombre ?? "NoName";

  String get Apellido => this.apellido ?? "NoSecondName";

  String get FullName => "${this.apellido}, ${this.nombre}";

  set Nombre(String name) => this.nombre = name;

  set Apellido(String apell) => this.apellido = apell;

  @override
  String toString() {
    // TODO: implement toString
    return "${this.apellido}, ${this.nombre}";
  }
}

class Student extends Persona {
  String? noCtrl;
  Student(String nombre, String apellido)
      : super(nombre: nombre, apellido: apellido);

  set NumCtrl(String num) => this.NumCtrl = num;
  String get NumCtrl => this.noCtrl ?? "0000";

  @override
  String toString() {
    // TODO: implement toString
    return super.toString() + " No.Ctrl: ${this.noCtrl}";
  }
}

class Maestro extends Persona {
  String? apellido;
  String? nombre;
}

void main(List<String> args) {
  List<int> numeros = [1, 2, 3, 4, 5, 6];
  print(numeros);
  numeros.add(7);
  print(numeros);
  numeros.forEach(print);
  List<int> num = numeros.map((x) => x + 1).toList();
  print(num);
  Map<String, dynamic> miMap = {"nombre": "Juan", "edad": 20, "Casado": false};
  print(miMap);
  print(miMap["nombre"]);
  List<Alumno> listaAlumnos = [];
  listaAlumnos.add(Alumno(nombre: "Juan", apellido: "Perez", noCtrl: "1234"));
  print(listaAlumnos);
  listaAlumnos.add(Alumno(nombre: "Luis", apellido: "Lopez", noCtrl: "321"));
  print(listaAlumnos);

  final alumno = {"nombre": "Maria", "apellido": "Lopez", "NoCtrl": "324"};
  List<Datos> datos = [];
  datos.add(Datos(dato: 1, subdato: 2));
  datos.add(Datos(dato: 3, subdato: 4));
  print(datos);

  listaAlumnos.add(Alumno.json(alumno));
  print(listaAlumnos);
}
