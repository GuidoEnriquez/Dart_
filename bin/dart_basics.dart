import 'dart:io';

import 'package:dart_basics/IceCream';

void main(List<String> arguments) {
  var chocolate = IceCream();
  chocolate.flavor = "chocolate";
  chocolate.charge();
}

/*
+ -----------------------------------------+
|          VARIABLES                       |
+ -----------------------------------------+
*/

void greetings(String name) {
  var age = 24;
  var example = 27.3;

  print("Hola, $name. Tienes $age años y tu ejemplo es $example.");
}

void numbersExample() {
  int age = 24;
  int test = -54;

  double age2 = 24.5;
  double age3 = 25;
  age2 = 1;

  num age4 = 12;
  num age5 = 12.5;
  age5 = 1;

  print(age);
  print(test);
  print(age2);
  print(age3);
  print(age4);
  print(age5);
}

void stringExample() {
  String name = 'Guido';
  String name2 = 'Facundo';
  String currentAge = '24 años';
  String fullText = "$name $name2 tiene $currentAge";
  print(fullText);
}

void dinamicExample() {
  dynamic example = 'Hola soy un ejemplo';
  print(example);
  example = 123;
  print(example);
  // Tipo dinámico permite cambiar el tipo de dato en tiempo de ejecución
}

void booleanExample() {
  bool isHappy = true;
  bool isSad = false;
  print(isHappy);
  print(isSad);
}

void fixedTypesExample() {
  final String fixedName = 'Guido';
  const String fixedName2 = 'Facundo';
  print(fixedName);
  print(fixedName2);
  // fixedName = 'Otro'; // Error: No se puede reasignar una variable final
  // fixedName2 = 'Otro'; // Error: No se puede reasignar una variable const
}

void conversionExample() {
  String numberAsString = '123';
  int number = int.parse(numberAsString);
  print(number);

  int numberToString = 123;
  String stringOk = numberToString.toString();
  print(stringOk);
}

void operacionMatematicaExample() {
  // Operaciones matemáticas:

  int a = 2;
  int b = 2;

  int result = a + b; //suma
  // int result = a - b; resta
  // int result = a * b; multiplicación
  // double result = a / b; division
  // int result = a ~/ b; division sin decimales
  //int result = a % b; modulo

  // a += b; //suma
  // a-=b; // resta
  // a*=b; // multiplicación
  // a/=b; // division
  // a~/=b; // division sin decimales
  // a%=b; // modulo

  print("El resultado es: $result");
}

void condicionalesExample() {
  // Condicionales:
  int age = 18;

  if (age >= 18) {
    print("Eres mayor de edad");
  } else {
    print("Eres menor de edad");
  }

  String resultado = (age >= 18) ? "Eres mayor de edad" : "Eres menor de edad";
  print(resultado);
}

void condicionalSwitchexample() {
  print("Introduce el día de la semana:");

  int numberOfTheWeek = int.parse(stdin.readLineSync()!);

  if (numberOfTheWeek == 1) {
    print("Lunes");
  } else if (numberOfTheWeek == 2) {
    print("Martes");
  } else if (numberOfTheWeek == 3) {
    print("Miércoles");
  } else if (numberOfTheWeek == 4) {
    print("Jueves");
  } else if (numberOfTheWeek == 5) {
    print("Viernes");
  } else if (numberOfTheWeek == 6) {
    print("Sábado");
  } else if (numberOfTheWeek == 7) {
    print("Domingo");
  } else {
    print("Número inválido");
  }

  // Switch case:
  int day = 3;
  String dayName;

  switch (day) {
    case 1:
      dayName = "Lunes";
      break;
    case 2:
      dayName = "Martes";
      break;
    case 3:
      dayName = "Miércoles";
      break;
    case 4:
      dayName = "Jueves";
      break;
    case 5:
      dayName = "Viernes";
      break;
    case 6:
      dayName = "Sábado";
      break;
    case 7:
      dayName = "Domingo";
      break;
    default:
      dayName = "Día inválido";
  }

  print("El día es: $dayName");
}

/*
+ -----------------------------------------+
|          METODOS                         |
+ -----------------------------------------+
*/
void simpleFunction() {
  print("Hola, soy una función simple");
}

void inputFunction(int a, int b) {
  int result = a + b;
  print("El resultado de la suma es: $result");
}

int outputFunction() {
  int a = 5;
  int b = 10;
  return a + b;
}

int completeFunction(int a, int b) {
  return a + b;
}

int completeFunction2(int a, int b) => a + b;

void optionalFunction({String name = "Desconocido", int age = -1}) {
  print("Eres $name y tienes $age años");
}

void optionalFunction2(String name, [int age = -1]) {
  print("Eres $name y tienes $age años");
}

/*
+ -----------------------------------------+
|          ESTRUCTURA DE DATOS            |
+ -----------------------------------------+
*/
void listExample() {
  List<String> names = ["Guido", "Facundo", "Wido"];
  var names2 = ["Naruto", "Sasuke", "Sakura"];

  // print(names[1]);
  // print(names.first);
  // print(names.last);
  //print(names.length);
  //names[2] = "W1do"; // Modificar un elemento
  names.insert(1, "Goku");
  //names.add("Goku"); // Agregar un elemento
  //print(names[names.length - 1]); // Último elemento
  names.addAll(names2); // Agregar varios elementos
  //names.remove("Wido"); // Eliminar un elemento
  //names.removeAt(2); // Eliminar por índice
  //names.clear(); // Limpiar la lista

  print(names);
}

void setExample() {
  Set<String> names = {"Guido", "Facundo", "Wido"};
  //var names2 = {"Naruto", "Sasuke", "Sakura"};

  // print(names.elementAt(1));
  // print(names.first);
  // print(names.last);
  // print(names.length);
  // names.add("Goku"); // Agregar un elemento
  // names.addAll(names2); // Agregar varios elementos
  // names.remove("Wido"); // Eliminar un elemento
  // names.removeWhere((name) => name.startsWith("G")); // Eliminar por condición
  // names.clear(); // Limpiar el set

  print(names);
}

void mapExamples() {
  Map<String, int> people = {"Guido": 24, "Facundo": 30, "Wido": 28};

  people["Wido"] = 32;
  people.addAll({"Naruto": 29, "Sasuke": 31});
  people["Sakura"] = 30;
  people.remove("Sakura");

  //print(people["Wido"]); // Acceder a un valor por clave
  people.containsKey("Wido");
  people.containsValue(32);

  people.length;
  people.clear(); // Limpiar el mapa

  print(people.values);
}

void listLoop() {
  List<int> numbers = [2, 4, 6, 8, 9, 5];

  for (int i = 0; i < numbers.length; i++) {
    print("Con el for basico tenemos: ${numbers[i]}");
  }

  for (var pepe in numbers) {
    print("Con el for número 2 tengo: $pepe");
  }

  for (var item in numbers) {
    print("El número es $item");
  }
  numbers.forEach(print);
}

void setLoop() {
  Set<int> numbers = {3, 4, 6, 8, 5};
  for (var number in numbers) {
    print("El Set: $number");
  }

  numbers.forEach((item) {
    print("El Set: $item");
  });
}

void mapLoop() {
  Map<String, int> numbers = {"favNumber": 7, "birthhday": 30, "address": 19};

  for (var element in numbers.entries) {
    print("La clave es: ${element.key} y el valor es: ${element.value}");
  }
  numbers.forEach((key, value) {
    print("La clave es: $key y el valor es: $value");
  });
}

void nullability() {
  String? name = "Guido"; // Puede ser nulo
  name = "";
  name = null;
  String example2 = name ?? "Invitado";

  name ??= "Pepe";

  IceCream? test = IceCream();

  if (name != null) {
    print("Hola $name");
  }

  int example = 13;
}
/*
+ -----------------------------------------+
|          EJERCICIOS                     |
+ -----------------------------------------+
*/

void ejercicio01() {
  /*
  Ejercicio 1: Calculadora de Edad

  Escribir un programa en Dart que calcule la edad de una persona en años, meses y días, 
  dado su año de nacimiento y la fecha actual.
  */
  String anioDeNacimiento = "2000";
  int anioActual = 2025;
  int anioNac = int.parse(anioDeNacimiento);
  int edad = anioActual - anioNac;
  print("Su edad es: $edad años");
}

void ejercicio02() {
  //Ejercicio 2:

  double totalDeCuenta = 29.99;
  int propina = 20;
  int cantPersonas = 2;

  double propinaCalculada = (totalDeCuenta * (propina / 100)) + totalDeCuenta;
  String totalPagar = (propinaCalculada / cantPersonas).toStringAsFixed(2);

  print("El total con propina es: \$ ${propinaCalculada.toStringAsFixed(2)}");
  print("El total a pagar por persona es: \$ $totalPagar");
}

void ejercicio03() {
  // Ejercicio 3: Identifica Números positivos y negativos

  // Escribir un programa en Dart que determine si un numero
  //ingresado por el usuario es positivo, negativo o cero.

  print("Introduce un número:");

  int myNum = int.parse(stdin.readLineSync()!);

  if (myNum > 0) {
    print("El numero es positivo");
  } else if (myNum < 0) {
    print("El numero es negativo");
  } else {
    print("El numero es cero");
  }
}

void ejercicio04() {
  /*
  Ejercicio 4: Meses del año
  Escribir un programa en Dart que imprima el nombre del mes correspondiente al número ingresado por el usuario (1-12).

  */

  print("Introduce un numero del 1 al 12:");
  int monthNumber = int.parse(stdin.readLineSync()!);

  switch (monthNumber) {
    case 1:
      print("Enero");
      break;
    case 2:
      print("Febrero");
      break;
    case 3:
      print("Marzo");
      break;
    case 4:
      print("Abril");
      break;
    case 5:
      print("Mayo");
      break;
    case 6:
      print("Junio");
      break;
    case 7:
      print("Julio");
      break;
    case 8:
      print("Agosto");
      break;
    case 9:
      print("Septiembre");
      break;
    case 10:
      print("Octubre");
      break;
    case 11:
      print("Noviembre");
      break;
    case 12:
      print("Diciembre");
      break;
    default:
      print("Número inválido");
  }
}

void ejercicio05() {
  /*
    EJERCICIO 5: SUMA DE NÚMEROS PARES EN UNA LISTA
    
    OBJETIVO:
    Escribir un programa en Dart que tome una lista de números enteros 
    y calcule la suma de todos los números pares de la lista.
    
    ejemplo:
    Entrada: [1, 2, 3, 4, 5, 6]
    Salida: La suma de los números pares es: 12
    */

  List<int> numeros = [1, 2, 4, 5, 7, 13, 15, 55, 34];
  int sumaPares = 0;

  for (var numero in numeros) {
    if (numero % 2 == 0) {
      sumaPares += numero;
    }
  }

  print("La suma de los números pares es: $sumaPares");
}

void ejercicio06() {
  /*
    Ejercicio 6: FILTRAR PALABRAS ÚNICAS EN UN SET

    Objetivo:
    Escribe un programa en Dart que reciba una lista de palabras con algunas
    repetudas y almacene solo las palabras únicas en un set.
    Luego, muestra el conjunto resultante.

    Ejemplo:
    Entrada: ["dart", "flutter", "dart", "codigo", "flutter", "movil"]
    Salida: {"dart", "flutter", "codigo", "movil"}
    */

  List<String> palabras = [
    "dart",
    "flutter",
    "dart",
    "codigo",
    "flutter",
    "movil",
  ];

  Set<String> resultado = {};
  for (var palabra in palabras) {
    resultado.add(palabra);
  }
  print("Palabras únicas: $resultado");
}

void ejercicio07() {
  /*
  Ejercicio 7: CONTAR LA FRECUENCIA DE PALABRASD EN UN MAP

  Objetivo:
  Escribe un programa en Dart que reciba una lista de palabras y cuente cuántas
  veces aparece cada una, almacenando el resultado en un map.

  Ejemplo:
  Entrada: ["dart", "flutter", "dart", "codigo", "flutter", "movil", "dart"]
  Salida: {"dart": 3, "flutter": 2, "codigo": 1, "movil": 1}
  */

  List<String> palabras = [
    "dart",
    "flutter",
    "dart",
    "codigo",
    "flutter",
    "movil",
    "dart",
  ];

  Map<String, int> frecuencia = {};
  for (var palabra in palabras) {
    frecuencia[palabra] = (frecuencia[palabra] ?? 0) + 1;
  }

  print("Frecuencia de palabras: $frecuencia");
}
