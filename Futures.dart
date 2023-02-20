void main(List<String> args) {
  print("Inicio del Programa");
  httpGet("htpp://www.google.com").then((data) => print(data));
  print("Fin del Programa");
}

Future<String> httpGet(String url) =>
    Future.delayed(Duration(seconds: 3), () => "Hola Mundo - 3 Segundos");
