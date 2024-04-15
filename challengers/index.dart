import 'dart:io';
import 'dart:math';

    /*INDICA SI UN NUMERO ES POSITIVO, NEGATIVO O CERO*/
    /*INDICATES IF A NUMBER IS POSITIVE, NEGATIVE OR ZERO*/

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
            //Menu.MostrarMenu();
  }
}

    /*OPERACIONES BASICA ENTRE DOS NUMEROS*/
    /*BASIC OPERATIONS BETWEEN TWO NUMBERS*/
     class Challenge2
    {
         void Run()
        {
            print("Enter first number: ");
            double num1 = double.parse(stdin.readLineSync()!);
            print("Enter second number: ");
            double num2 = double.parse(stdin.readLineSync()!);
            print("Addition: ${num1 + num2}\nSubtraction: ${num1 + num2}\nMultiplication ${num1 + num2}\nDivision: ${num1 + num2}");
            print(" \n****** Operation completed, thank you. ****** \n ******** Select New Option ********");
            
        }
    }

    /*CUADRADO DE UN NUMERO*/
    /*SQUARE OF A NUMBER*/
     class Challenge3
    {
         void Run()
        {
            print("Enter one number: ");
            int numero = int.parse(stdin.readLineSync()!);
            print("The square of  ${numero} is: ${numero * numero}");
            print(" \n****** Operation completed, thank you. ****** \n ******** Select New Option ********");
            
        }
    }
    /*AREA DE UN CIRCULO*/
    /*AREA OF A CIRCLE*/
     class Challenge4
    {
         void Run()
        {
            print("Enter the radius of the circle: ");
            double radio = double.parse(stdin.readLineSync()!);
            double area = pi * radio * radio;
            print("The area of ​​the circle with radius ${radio} is ${area}");
            print(" \n****** Operation completed, thank you. ****** \n ******** Select New Option ********");
            
        }
    }

    /*DIA DE LA SEMANA*/
    /*WEEKDAY*/
     class Challenge5
    {
         void Run()
        {
            print("Enter a number between 1 and 7: ");
            int dia = int.parse(stdin.readLineSync()!);
            switch (dia)
            {
                case 1: print("Monday-Lunes"); break;
                case 2: print("Tuesday-Martes"); break;
                case 3: print("Wednesday-Miercoles"); break;
                case 4: print("Thursday-Jueves"); break;
                case 5: print("Friday-Viernes"); break;
                case 6: print("Saturday-Sabado"); break;
                case 7: print("Sunday-Domingo"); break;
                default: print("Invalid number"); break;
            }
            print(" \n****** Operation completed, thank you. ****** \n ******** Select New Option ********");
            
        }
    }

    /*IMPUESTO A PAGAR*/
    /*TAX PAYABLE*/
     class Challenge6
    {
         void Run()
        {
            print("Enter your monthly salary: ");
            double salario = double.parse(stdin.readLineSync()!);
            double impuesto = salario > 1000 ? 0.1 * salario : 0;
            print("The tax to pay is ${impuesto}");
            print(" \n****** Operation completed, thank you. ****** \n ******** Select New Option ********");
            
        }
    }

    /*DIVISION DE 2 NUMEROS*/
    /*DIVISION OF 2 NUMBERS*/
     class Challenge7
    {
         void Run()
        {
            try
            {
                print("Number to divide: ");
                double n = double.parse(stdin.readLineSync()!);
                print("Divider: ");
                double divisor = double.parse(stdin.readLineSync()!);
                print("The result is: ${n / divisor}");
            }
            catch (e)
            {
                print("Error when performing the operation...!!! ");              
                //print("Cannot be divided by ZERO !!! ");
            }
            /*catch (Exception)
            {
                print("Error when performing the operation...!!! ");
            }*/
            print(" \n****** Operation completed, thank you. ****** \n ******** Select New Option ********");
            
        }
    }

    /*CALCULA Y MUESTRA LA SUMA DE NUMEROS IMPARES ENTRE 1 Y 100*/
    /*CALCULATE AND SHOW THE SUM OF ODD NUMBERS BETWEEN 1 AND 100*/
     class Challenge8
    {
         void Run()
        {
            int suma = 0;
            for (int i = 1; i <= 100; i += 2)
            {
                suma += i;
            }
            print("The sum of odd numbers between 1 and 100 is: ${suma} ");
            print(" \n****** Operation completed, thank you. ****** \n ******** Select New Option ********");
            
        }
    }

    /*SUMAR FRACCIONES*/
    /*ADDING FRACTIONS*/
     class Challenge9
    {
         void Run()
        {
            print("Enter numerator of the first fraction: ");
            int num1 = int.parse(stdin.readLineSync()!);
            print("Enter denominator of the first fraction: ");
            int den1 = int.parse(stdin.readLineSync()!);

            print("Enter numerator of the second fraction: ");
            int num2 = int.parse(stdin.readLineSync()!);
            print("Enter denominator of the second fraction: ");
            int den2 = int.parse(stdin.readLineSync()!);

            try
            {
                Fraccion fraccion1 = new Fraccion(num1, den1);
                Fraccion fraccion2 = new Fraccion(num2, den2);
                Fraccion resultado = fraccion1.Sumar(fraccion2);
                print("The sum of ${fraccion1} and ${fraccion2} is: ${resultado}");
            }
            catch (e)
            {
                print("Error: $e");
            }
        }
    }

     class Fraccion
    {
         int numerador;
         int denominador;

         Fraccion(this.numerador, this.denominador)
        {
            if (denominador == 0) ;
            {
                throw Exception("The denominator cannot be zero. ");
            }
        }

         Fraccion Sumar(Fraccion otra)
        {
            int nuevonumerador = numerador * otra.denominador + otra.numerador * denominador;
            int nuevodenominador = denominador * otra.denominador;
            return  Fraccion(nuevonumerador, nuevodenominador);
        }
        //SE PUEDEN AGREGAR MAS METODOS PARA OTRAS OPERACIONES DE SER NECESARIO
         @override 
         String toString()
        {
            return "$numerador/$denominador";
        }
    }

    /*SOLICITAR PALABRA AL USUARIO Y MOSTRARLA INVERTIDA*/
    /*REQUEST WORD FROM THE USER AND SHOW IT INVERTED*/
     class Challenge10
    {
         void Run()
        {
            print("Enter one word: ");
            String palabra = stdin.readLineSync()!;
            String invertida =  palabra.split('').reversed.join() ;
            print("The inverted word is: ${invertida}");
            print(" \n****** Operation completed, thank you. ****** \n ******** Select New Option ********");
        }
    }

    /*SOLICITA AL USUARIO 3 NUMEROS Y MUESTRA SU PROMEDIO*/
    /*ASKS THE USER FOR 3 NUMBERS AND SHOWS THEIR AVERAGE*/
     class Challenge11
    {
         void Run()
        {
            print("Enter first number: ");
            double num1 = double.parse(stdin.readLineSync()!);

            print("Enter second number: ");
            double num2 = double.parse(stdin.readLineSync()!);

            print("Enter third number: ");
            double num3 = double.parse(stdin.readLineSync()!);

            double promedio = (num1 + num2 + num3) / 3;
            print("The average of the three numbers is: ${promedio}");

            print(" \n****** Operation completed, thank you. ****** \n ******** Select New Option ********");
            

        }
    }

    /*SOLICITAR AL USUARIO 5 NUMEROS Y MUESTRA EL MAS GRANDE*/
    /*ASK THE USER FOR 5 NUMBERS AND SHOW THE LARGEST ONE*/
     class Challenge12
    {
         void Run()
        {
            List<int> numeros = [];
            for (int i = 0; i < 5; i++)
            {
                print("Enter one number ${i + 1} : ");
                numeros.add(int.parse(stdin.readLineSync()!));
            }
            print("The number more big of the list is: ${numeros.reduce(max)} ");
            print(" \n****** Operation completed, thank you. ****** \n ******** Select New Option ********");
        }
    }

    /*INTRODUCE UNA PALABRA, SI O NO ES PALINDROMO*/
    /*ENTER A WORD, IF OR NOT IT IS PALINDROME*/
     class Challenge13
    {
         void Run()
        {
            print("Enter one word: ");
            String palabra = stdin.readLineSync()!;
            bool esPalindromo = palabra == palabra.split('').reversed.join();
            if (esPalindromo)
            {
                print("The word $palabra is a palindrome. ");
            }
            else
            {
                print("The word $palabra is not a palindrome. ");
            }
            print(" \n****** Operation completed, thank you. ****** \n ******** Select New Option ********");
            
        }
    }

    /*EL USUARIO INGRESA NUMERO Y SE MUESTRA SI ES PAR O IMPAR*/
    /*THE USER ENTER NUMBER AND IT IS SHOWN IF IT IS EVEN OR ODD*/
     class Challenge14
    {
         void Run()
        {
            print("Enter first number: ");
            int numero = int.parse(stdin.readLineSync()!);
            if (numero % 2 == 0)
            {
                print("The number $numero is even(par). ");
            }
            else
            {
                print("The number $numero is odd(impar). ");
            }
            print(" \n****** Operation completed, thank you. ****** \n ******** Select New Option ********");
            
        }
    }

    /*INGRESA UN NUMERO Y VALIDA SI ESTA ENTRE EL RANGO DE 0 A 10*/
    /*ENTER A NUMBER AND VALIDATE IF IT IS BETWEEN THE RANGE OF 0 TO 10*/
     class Challenge15
    {
         void Run()
        {
            print("Enter one number: ");
            int numero = int.parse(stdin.readLineSync()!);
            if (numero >= 0 && numero <= 10)
            {
                print("The number  $numero is in the range of 0 a 10. ");
            }
            else
            {
                print("The number  $numero is out the range of 0 a 10. ");
            }
            print(" \n****** Operation completed, thank you. ****** \n ******** Select New Option ********");
            
        }
    }

