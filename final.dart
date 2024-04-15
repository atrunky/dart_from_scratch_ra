import 'dart:io';
import 'challengers/index.dart';
import 'menu/index.dart';

void main()
{
            print("Join the name: ");
            String? nombre = stdin.readLineSync();
            print(" Hi, $nombre , Please, select excercise by next menu: ");
            
            var menu = new Menu();
            menu.MostrarMenu();
            
            while (true) {
                String? entrada = stdin.readLineSync()?.toLowerCase();
                if (entrada == "q" || entrada == "exit")
                {
                    break; //salir del bucle
                }
                int? eleccion = int.tryParse(entrada!);
                if (eleccion != null && eleccion >= 1 && eleccion <= 15)
                {
                    switch (eleccion)
                    {
                        case 1:
                            var challenge1 = new Challenge1();
                            challenge1.Run();
                            break;
                        case 2:
                            var challenge2 = new Challenge2();
                            challenge2.Run();
                            break;
                        case 3:
                            var challenge3 = new Challenge3();
                            challenge3.Run();
                            break;
                        case 4:
                            var challenge4 = new Challenge4();
                            challenge4.Run();
                            break;
                        case 5:
                            var challenge5 = new Challenge5();
                            challenge5.Run();
                            break;
                        case 6:
                            var challenge6 = new Challenge6();
                            challenge6.Run();
                            break;
                        case 7:
                            var challenge7 = new Challenge7();
                            challenge7.Run();
                            break;
                        case 8:
                            var challenge8 = new Challenge8();
                            challenge8.Run();
                            break;
                        case 9:
                            var challenge9 = new Challenge9();
                            challenge9.Run();
                            break;
                        case 10:
                            var challenge10 = new Challenge10();
                            challenge10.Run();
                            break;
                        case 11:
                            var challenge11 = new Challenge11();
                            challenge11.Run();
                            break;
                        case 12:
                            var challenge12 = new Challenge12();
                            challenge12.Run();
                            break;
                        case 13:
                            var challenge13 = new Challenge13();
                            challenge13.Run();
                            break;
                        case 14:
                            var challenge14 = new Challenge14();
                            challenge14.Run();
                            break;
                        case 15:
                            var challenge15 = new Challenge15();
                            challenge15.Run();
                            break;
                        default:
                            print("Press any key by continued...");
                            stdin.readLineSync();
                            menu.MostrarMenu();
                            break;
                    }
                }
                else
                {
                    print("Option not valid. Please enter one number between 1 and 15, or 'q' or 'exit' for go out");
                }
            }
            print("!Good Bye!");
}
    