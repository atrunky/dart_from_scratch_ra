import 'dart:io';
import 'dart:math';

class Challenge1 {
  void Run() {
  print("Enter one number: ");
            int num = int.parse(stdin.readLineSync()!);
            if (num > 0) 
            print("Positive");
            else if (num < 0) 
            print("Negative");
            else 
            print("Is Cero");
            print(" \n****** Operation completed, thank you. ****** \n ******** Select New Option ********");
            //menu.MostrarMenu();
        }
    }