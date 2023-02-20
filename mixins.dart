abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Bird extends Animal {}

abstract class Pez extends Animal {}

abstract class Volador {
  void volar() => print("Estoy Volando");
}

abstract class Caminante {
  void caminar() => print("Estoy Caminando");
}

abstract class Nadador {
  void nadar() => print("Estoy Nadando");
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Bird with Caminante, Volador {}

class Pato extends Bird with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main(List<String> args) {
  final flipper = new Delfin();
  flipper.nadar();

  final bat = new Murcielago();
  bat.caminar();
  bat.volar();

  final paz = new Paloma();
  paz.caminar();
  paz.volar();

  final donald = new Pato();
  donald.caminar();
  donald.volar();
  donald.nadar();
}
