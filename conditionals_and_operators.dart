import 'dart:io';

void main (){
  print("Enter the first number: ");

  double? a = double.tryParse(stdin.readLineSync()!);
  print("Enter the second number: ");
  double? b = double.tryParse(stdin.readLineSync()!);

  const indeterminado = "Indeterminate";
  if (a != null && b != null) {
    print("Addition: ${a + b}, Subtraction: ${a - b}, Multiplication: ${a * b}, Division ${(b !=0 ? a/b : indeterminado)}");
  } else {
    print("Please, enter values numbers valid. ");
  }
}