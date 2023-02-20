void main(List<String> args) async {
  print("Inicio del Programa");

  httpGet("htpp://www.google.com").then((data) => print(data));

  getNombre("01").then(print);

  final data = await httpGet(
      "htpp://www.google.com"); //Llamada a funcion Sincrona dentro de una funcion asincrona

  print(data);

  print("Fin del Programa");
}

//Funcion Sincrona
Future<String> httpGet(String url) =>
    Future.delayed(Duration(seconds: 3), () => "Hola Mundo - 3 Segundos");

//Funcion Asincrona
Future<String> getNombre(String id) async => "$id - Juan";
