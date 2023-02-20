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

void main(List<String> args) {
  Alumno al0 = Alumno(apellido: "Lopez", nombre: "Luis",  noCtrl: "321");
  Alumno al1 = Alumno.all("Juan", "Perez", "123");
  print(al1.fullName);
  print(al1);
  
  

}
