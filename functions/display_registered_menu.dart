import 'dart:io';
import 'cls.dart';

bool displayRegisteredMenu(String menuLetter) {
  bool registeredCorrectly = false;
  switch (menuLetter) {
    case 'N':
    case 'n':
      registeredCorrectly = createNewProfile();
      break;
    case 'L':
    case 'l':
      registeredCorrectly = enterLoginAndPassword();
      break;
    case 'D':
    case 'd':
      registeredCorrectly = deleteExistingProfile();
      break;
    case 'E':
    case 'e':
      registeredCorrectly = logautOrExit();
    default:
      cls();
      print("the entered letters are incorrect try again");
      sleep(Duration(seconds: 3));
  }
  return registeredCorrectly;
}

bool createNewProfile() {
  cls();
  print("create a new profile");
  sleep(Duration(seconds: 3));
  return true;
}

bool enterLoginAndPassword() {
  cls();
  print("Enter your login and password");
  sleep(Duration(seconds: 3));
  return true;
}

bool deleteExistingProfile() {
  cls();
  print("Delete existing profile");
  sleep(Duration(seconds: 3));
  return true;
}

bool logautOrExit() {
  cls();
  print("Exit logaut");
  sleep(Duration(seconds: 3));
  return false;
}
