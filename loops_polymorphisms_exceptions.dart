import 'dart:io';
import 'dart:math';

void main(){
  Circulo circ = Circulo();
  circ.radio = 20;
  var result_area = circ.area();
  var result_perim = circ.perimetro();

  print("The Area is: ${result_area}, and the perimeter is: ${result_perim}. The new Radio is: ${circ.add10()} ");
  int prev = 0, next = 1, sum;
  for (int i =0; i < 10; i++){
    print(prev);
    sum = prev + next;
    prev = next;
    next = sum;
  }

  try {
    print("Number a divide:");
    double n = double.parse(stdin.readLineSync()!);
    print("Divisor");
    double divisor = double.parse(stdin.readLineSync()!);
    if(divisor == 0){
      throw ArgumentError("!!WARNING!!, Can't divide for cero.");
    }

    print("Result: ${n / divisor}");
  } on ArgumentError catch (e) {
    print(e.message);
  } catch (e) {
    print("Unknown error ");
  }
}

abstract class ExtraCalculations {
  double add10();
}

abstract class Figura {
  double area();
  double perimetro();
}

class Circulo implements Figura, ExtraCalculations {
  double? radio;

  @override
  double area() => pi * radio! * radio!;

  @override
  double perimetro() => 2 * pi * radio!;

  @override
  double add10() {
    return radio! + 10;
  }
}