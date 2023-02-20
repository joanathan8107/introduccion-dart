abstract class Persona {
  String nombre;
  String apellido;
  String rfc;

  Persona({required this.nombre, required this.apellido, required this.rfc});

  Persona.persona({required Persona persona})
      : this.nombre = persona.Nombre,
        this.apellido = persona.Apellido,
        this.rfc = persona.RFC;

  String get Nombre => this.nombre;
  String get Apellido => this.apellido;
  String get RFC => this.rfc;

  set Nombre(String val) => this.nombre;
  set Apellido(String val) => this.apellido;
  set RFC(String rfc) => this.rfc;

  @override
  String toString() {
    // TODO: implement toString
    return "${this.apellido}, ${this.nombre} RFC: ${this.rfc}";
  }
}

enum Categorias { Docente, Administrativo, NoCategoria }

class Personal extends Persona {
  double? salario;
  String? id;
  Categorias? categoria;

  Personal(
      {required String nombre,
      required String apellido,
      required String rfc,
      required double salario,
      required String id,
      required Categorias categoria})
      : super(nombre: nombre, apellido: apellido, rfc: rfc) {
    this.salario = salario;
    this.id = id;
    this.categoria = categoria;
  }

  Personal.persona(
      {required Persona persona,
      required Categorias categoria,
      required String id,
      required double salario})
      : super.persona(persona: persona) {
    this.categoria = categoria;
    this.id = id;
    this.salario = salario;
  }

  Personal.json(Map<String, dynamic> json)
      : super(
            nombre: json["nombre"] ?? "NoName",
            apellido: json["apellido"] ?? "NoSecondName",
            rfc: json["rfc"] ?? "AAAA000000AAA") {
    this.salario = json["salario"] ?? 0;
    this.id = json["cedula"] ?? json["clave"] ?? "NoID";
    this.categoria = json["categoria"] ?? Categorias.NoCategoria;
  }

  set Salario(double salario) => this.salario;
  double get Salario => this.salario ?? 0.00;

  set Cedula(String cedula) => this.id;
  String get Cedula => this.id ?? "NoID";

  set Clave(String clave) => this.id = clave;
  String get Clave => this.id ?? "NoID";

  @override
  String toString() {
    // TODO: implement toString
    String txt = (this.categoria == Categorias.Docente)
        ? "Cedula: ${this.id}"
        : "Clave: ${this.id}";
    return super.toString() + "\nSalario: \$ ${this.salario} \n$txt";
  }
}

class Alumno extends Persona {
  String? noCtrl;

  Alumno(
      {required String nombre,
      required String apellido,
      required String rfc,
      required String noctrl})
      : super(nombre: nombre, apellido: apellido, rfc: rfc) {
    this.noCtrl = noctrl;
  }

  Alumno.persona({required Persona persona, required String nctrl})
      : super.persona(persona: persona) {
    this.noCtrl = nctrl;
  }

  Alumno.json(Map<String, dynamic> json)
      : super(
            nombre: json["nombre"] ?? "NoName",
            apellido: json["apellido"] ?? "NoSecondName",
            rfc: json["rfc"] ?? "AAAA000000AAA") {
    this.noCtrl = json["noCtrl"] ?? "0000";
  }

  set NoCtrl(String num) => this.noCtrl;
  String get NoCtrl => this.noCtrl ?? "0000";

  @override
  String toString() {
    // TODO: implement toString
    return super.toString() + "\nNumCtrl: ${this.noCtrl}";
  }
}

class Escuela {
  String? nombre;
  String? registro;
  List<Personal> listadoPersonal = [];
  List<Alumno> listadoAlumnos = [];

  Escuela({required this.nombre, required this.registro});

  Escuela.json(Map<String, dynamic> json) {
    this.nombre = json["nombre"] ?? "NoName";
    this.registro = json["registro"]! ?? "NoRegistry";
    List<Map<String, String>> lista_alumnos = json["alumnos"] ?? [];
    List<Map<String, dynamic>> lista_personal = json["personal"] ?? [];
    importarAlumnos(lista_alumnos);
    importarPersonal(lista_personal);
  }

  void importarAlumnos(List<Map<String, String>> alumnos) {
    for (Map<String, String> al in alumnos) {
      addAlumno(Alumno.json(al));
    }
  }

  void importarPersonal(List<Map<String, dynamic>> personal) {
    for (Map<String, dynamic> per in personal) {
      addPersonal(Personal.json(per));
    }
  }

  String get Nombre => this.nombre ?? "NoName";
  set Nombre(String nom) => this.nombre;

  String get Registro => this.registro ?? "NoRegistry";
  set Registro(String reg) => this.registro;

  void addAlumno(Alumno alumno) {
    this.listadoAlumnos.add(alumno);
  }

  void addPersonal(Personal personal) {
    this.listadoPersonal.add(personal);
  }
}

void main(List<String> args) {}
