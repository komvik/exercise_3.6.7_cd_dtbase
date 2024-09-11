import 'calculate_password_strength.dart';
import 'dart:io';

void main() {
  stdout.write('Enter a password: ');
  String password = stdin.readLineSync()!; // Verpaste !

  int score = calculatePasswordStrength(password);
  //String age = 8;  // unnötige
  //String name;  // unnötige

  switch (score) {
    case 4:
      print('Password is strong with a score of $score');
      break;
    case 3:
      print('Password is moderately strong with a score of $score');
      break;
    case 2:
      print('Password is weak with a score of $score'); //printline ist fehler
      break;
    case 1:
      print('Password is very weak with a score of $score');
      break;
    default:
      print('Password is too short and very weak with a score of $score');
  }
}
