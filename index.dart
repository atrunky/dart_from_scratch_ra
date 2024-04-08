import 'dart:io';

void main() {
  print("Hello, Welcome to calculate your age to years.");
  print("My friend please, enter your name:  ");
  String? nameInput = stdin.readLineSync();
  print('Nice to meet you $nameInput');
  print("Please, enter your birthdate in format dd/mm/yyyy :  ");
  String? birthdateInput = stdin.readLineSync();
  //DateTime? dateConverted = DateTime.tryParse(birthdateInput!);
  DateTime? dateConverted = _convertToDateTime(birthdateInput!);

   if (dateConverted == null) {
      print('The birtdate is invalid, you sent us: $birthdateInput');
      return;
   }
// SE CREA UNA INSTANCIA
    var person = Person(
      name: nameInput,
      birthdate: dateConverted,
      age: DateTime.now().year - dateConverted.year,
    );

    print('Your name is: ${person.name}');
    print('Your birtdate is: ${person.birthdate}');
    print('!Your age is: ${person.age} years! ');
}

//FUNCION NUEVA QUE CONTROLA LA FECHA DE INGRESO DIVIDIENDOLO EN PARTES CON EL INDICADOR "/"
// LA FUNCION ES LLAMADA EN LA LINEA 11
DateTime? _convertToDateTime(String date){
  List<String> parts = date.split('/');
  if (parts.length != 3) return null;
  return DateTime.tryParse('${parts[2]}-${parts[1]}-${parts[0]}');
}
//SE CREA CLASE PERSONA
class Person{
  final String? name;
  final DateTime? birthdate;
  final int? age;
  Person({this.name, this.birthdate, this.age});  
}