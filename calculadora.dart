import 'dart:io';

void menu() {
  print("C A L C U L A D O R A   D A R T");
  print("---------------------------------");
  print("         M E N U ");
  print("");
  print("1 --> Suma");
  print("2 --> Resta");
  print("3 --> Producto");
  print("4 --> División");
  print("5 --> Residuo");
  print("6 --> Salir");
  print("----------------------------------");
  print("");
}

dynamic lecturaOperador([String txt = "Teclea Operador: "]) {
  var op;
  do {
    stdout.write("\n$txt");
    op = stdin.readLineSync();
  } while (op.toString().length == 0);
  double x = double.parse(op);
  if (((x * 10) % 10) == 0) return int.parse(op);
  return x;
}

void suma() {
  print("\n\n    S U M A");
  var op1 = lecturaOperador("Teclea Sumando: ");
  var op2 = lecturaOperador("Teclea Sumando: ");
  print("$op1 + $op2 = ${op1 + op2}");
  print("--------------------------------");
}

void resta() {
  print("\n\n    R E S T A");
  var op1 = lecturaOperador("Teclea Minuendo: ");
  var op2 = lecturaOperador("Teclea Sustraendo: ");
  print("$op1 - $op2 = ${op1 - op2}");
}

void producto() {
  print("\n\n    P R O D U C T O");
  var op1 = lecturaOperador("Teclea Multiplicando: ");
  var op2 = lecturaOperador("Teclea Multiplicador: ");
  print("$op1 * $op2 = ${op1 * op2}");
  print("--------------------------------");
}

void division() {
  print("\n\n    D I V I S I O N");
  var op1 = lecturaOperador("Teclea Dividendo: ");
  var op2;
  do {
    op2 = lecturaOperador("Teclea Divisor (diferente de cero) : ");
  } while (op2 == 0);
  print("$op1 / $op2 = ${op1 / op2}");
  print("--------------------------------");
}

dynamic calculaResiduo(dynamic a, dynamic b) {
  while (a >= b) {
    a -= b;
  }
  return a;
}

void residuo() {
  print("\n\n   R E S I D U O");
  var op1 = lecturaOperador("Teclea Dividendo: ");
  var op2;
  do {
    op2 = lecturaOperador("Teclea Divisor (diferente de cero) : ");
  } while (op2 == 0);
  print("$op1 % $op2 = ${calculaResiduo(op1, op2)}");
  print("--------------------------------");
}

void main() {
  var op;
  do {
    menu();
    op = lecturaOperador("Opción:> ");
    switch (op) {
      case 1:
        suma();
        break;
      case 2:
        resta();
        break;
      case 3:
        producto();
        break;
      case 4:
        division();
        break;
      case 5:
        residuo();
        break;
      case 6:
        print(" A D I O S  :-) !!!");
        break;
      default:
        print("O P C I O N   I N V A L I D A");
    }
    print("\n\n");
  } while (op != 6);
}
