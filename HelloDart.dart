import 'dart:io';
/*
Lenguajes furtemente tipados
Lenguajes de tipo Dinamico

Tipos de Datos en Dart:

int, double, String, bool, dynamic

*/

//Clases
class Persona {
  late String nombre;
  late int edad;

  Persona([String name = "NoName", int ed = 0]) {
    this.nombre = name;
    this.edad = ed;
  }

//Constructores Nombrados
  Persona.guest() {
    this.nombre = "Guest";
    this.edad = 20;
  }

  Persona.prueba(String n) {
    this.edad = 15;
    this.nombre = n;
  }

  void mostrarDatos() {
    print(nombre);
    print(edad);
  }
}

class X {
  final nombre;
  static const int edad = 10;

  X(this.nombre);
}

int miFuncion([int a = 10, int b = 10]) => a + b;

void mostrarSalida(var msj) => print(msj);

void main(List<String> args) {
  Persona p1 = Persona("Chava", 42);
  p1.mostrarDatos();

  Persona p2 = Persona.guest();
  p2.mostrarDatos();

  print("La suma es: ");

  print(miFuncion());

  //Comentario Una Linea
  /*
  Comentarios 
  varias Lineas
  *

  ///Comentario de Documentación
  var nombre;
  var edad;
  stdout.write("Ingrese su nombre: ");
  nombre = stdin.readLineSync();
  stdout.write("Ingrese su edad: ");
  edad = stdin.readLineSync();
  print("Hola $nombre de $edad años \nBienvenido al Mundo Dart !!");
*/

  //int
  int ed = 10;
  var ed2 = 15;
  print("Las ed son $ed y $ed2");

  //Double
  double sal = 5.43;
  var sal1 = 3.45;
  print("Los sal son $sal y $sal1");

  //String
  String nm = "Name1";
  String nm2 = "Name2";
  print("Los valores nm $nm y $nm2");

  //bool
  bool v1 = true;
  bool v2 = false;
  print("Los val son $v1 y $v2");

  //dynamic

  dynamic dv1 = 'Pablo';
  print("Valor dv1 $dv1");
  dv1 = 3;
  print("Valor dv1 $dv1");
  dv1 = null;
  print("Valor dv1 $dv1");

  var s1 = "Esto es un 'texto' con comillas";
  print(s1);
  s1 = 'Esto es un texto con "dobles comillas"';
  print(s1);
  s1 = "It\'s a paraghrap";
  print(s1);
  s1 = "It's a pharagraph";
  print(s1);

  s1 = r"Esto es un caracter de salida con \n raw";
  print(s1);

  s1 = """ Esto es un 
  texto de 
  Multiples Lineas
""";
  print(s1);

  //Cast de String
  var uno = int.parse("1");
  assert(uno == 1);

  var pi = double.parse("3.1416");
  assert(pi == 3.1416);

  //Cast a String
  var unoStr = 1.toString();
  assert(unoStr == "1");
  var piStr = 3.1416.toStringAsFixed(2);
  assert(piStr == "3.14");
  var boolStr = true.toString();

  //Manejo de Operadores
  //Matematicos +, -, *, /, %,
  //Logicos ==, (if/else), , !=, <=, >=
  //Unarios ++, --
  //Logicos &&, ||
  //Bitwise (Binario): &, |

  //Sentencias Condicionales

  //if/else, switch

  int val = 1;

  if (val == 1) {
    print("Uno");
  } else {
    print("No uno");
  }
  switch (val) {
    case 1:
      print("Uno");
      break;
    case 2:
      print("Dos");
      break;
    default:
      print("Otro Número");
  }

  //Ciclos
  // for

  for (int i = 0; i < 10; i++) {
    print("Valor de i = $i");
  }

  //Manejo de Arreglos
  var numeros = [4, 8, 16];
  for (var i = 0; i < numeros.length; i++) {
    print("Numeros[$i] = ");
    print(numeros[i]);
  }
  for (var element in numeros) {
    print(element);
  }

  numeros.forEach((element) {
    print(element);
  });
  numeros.forEach((n) => print(n));

  numeros.forEach((n) => print(n));

  //While, do-while
  var num = 5;
  while (num > 0) {
    print(num);
    num--;
  }

  do {
    print(num);
    num++;
  } while (num < 5);
}
