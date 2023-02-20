import 'dart:io';

void menu() {
  print("    C A L C U L A D O R A   D A R T");
  print("--------------------------------------");
  print("              M E N U");
  print("--------------------------------------");
  print("1 --> Suma");
  print("2 --> Resta");
  print("3 --> Producto");
  print("4 --> División");
  print("5 --> Modulo");
  print("6 --> Salir");
  print("--------------------------------------");
}

dynamic leerOperador([String txt = "Opción:> "]) {
  var op;
  do {
    stdout.write(txt);
    op = stdin.readLineSync();
    if (op.toString().length > 0) {
      var opdouble = double.parse(op);
      if (((opdouble * 10) % 10) == 0) {
        return int.parse(op);
      }
      return opdouble;
    }
  } while (op.toString().length == 0);
}

void suma() {
  print("-----------------");
  print("     S U M A");
  print("-----------------");
  var op1 = leerOperador("Teclea Sumando 1: ");
  var op2 = leerOperador("Teclea Sumando 2: ");
  print("$op1 + $op2 = ${op1 + op2}");
  print("-----------------");
}

void resta() {
  print("-----------------");
  print("   R E S T A");
  print("-----------------");
  var op1 = leerOperador("Teclea Minuendo: ");
  var op2 = leerOperador("Teclea Sustraendo: ");
  print("$op1 - $op2 = ${op1 - op2}");
  print("-----------------");
}

void producto() {
  print("-----------------");
  print(" P R O D U C T O");
  print("-----------------");
  var op1 = leerOperador("Teclea Multiplo: ");
  var op2 = leerOperador("Teclea Multiplicador: ");
  print("$op1 * $op2 = ${op1 * op2}");
  print("-----------------");
}

void division() {
  print("-----------------");
  print(" D I V I S I Ó N");
  print("-----------------");
  var op1 = leerOperador("Teclea Dividendo: ");
  var op2;
  do {
    op2 = leerOperador("Teclea Divisor (diferente de Cero): ");
  } while (op2 == 0);
  print("$op1 / $op2 = ${op1 / op2}");
  print("-----------------");
}

dynamic calculoResiduo(dynamic a, dynamic b) {
  while (a >= b) {
    a -= b;
  }
  return a;
}

void residuo() {
  print("-----------------");
  print("  R E S I D U O");
  print("-----------------");
  var op1 = leerOperador("Teclea Dividendo: ");
  var op2;
  do {
    op2 = leerOperador("Teclea Divisor (diferente de Cero): ");
  } while (op2 == 0);
  print("$op1 % $op2 = ${calculoResiduo(op1, op2)}");
  print("-----------------");
}

void main(List<String> args) {
  var op;
  do {
    menu();
    op = leerOperador();
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
        print("Adios :-) !!!");
        break;
      default:
        print("Opción Invalida!!!");
    }
  } while (op != 6);
}
