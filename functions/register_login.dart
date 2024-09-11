import 'dart:io';

import 'display_registered_menu.dart';

bool registerLogin() {
  bool registrationSuccessful = true;
  printRegisteredMenu();

  stdout.write('\nEnter the Letter: ');

  registrationSuccessful = displayRegisteredMenu("${stdin.readLineSync()}");
// "you still have $numberOfRepeat attempts";
  return registrationSuccessful;
}

void printRegisteredMenu() {
  print('\n       MENU:');
  print('  [ N ]  Create a new profile');
  print('  [ L ]  Enter your login and password');
  print('  [ D ]  Delete existing profile');
  print('  [ E ]  Exit or Logout  ');
}

bool databaseRead() {
  Map<String, dynamic> logPass = {
    "Viktor": "122",
    "Mike": "233",
    "user": "111",
  };
  int numberOfSearchQueries = 3;

  /// The function is designed to work with the database
  /// At the initial stage the database was written manually
  /// The function returns the found login and password from the database
  /// ODER >> import 'package:flutter_secure_storage/flutter_secure_storage.dart';
  while (numberOfSearchQueries > 0) {
    stdout.write('\nEnter your username: ');
    String? inputLogin = stdin.readLineSync();

    if ((searchInMap(logPass, "$inputLogin") != null) &&
        (logPass.containsKey(inputLogin))) {
      print("Faund  $inputLogin  ${logPass[inputLogin]}");
      numberOfSearchQueries = 0;
      return true;
    } else {
      print('login is incorrect, try again');
      numberOfSearchQueries--;
    }
  }
  return false;
}

Map<String, dynamic>? searchInMap(Map<String, dynamic> data, String key) {
  if (data.containsKey(key)) {
    return {key: data[key]};
  }
  return null;
}
