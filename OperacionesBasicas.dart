import 'dart:io';

void main(List<String> args) {
  var a;
  var b;
  var suma, resta, producto, division;
  a = stdin.readLineSync();
  b = stdin.readLineSync();
  suma = a + b;
  print("La suma de $a + $b = $suma");
  resta = a - b;
  print("La resta de $a - $b = $resta");
  producto = a * b;
  print("El producto de $a * $b = $producto");
  if (b != 0) {
    division = a / b;
    print("La Division de $a / $b = $division");
  } else {
    print("No se pùede dividir entre cero");
  }
}
