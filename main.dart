// user register or login.(login/logout/delete user)
// have info about player.(How many players play on courts and wich corts.)
// inform at what time and where it will play.
// post a message to the group.

import 'models/player.dart';
import 'models/basketball_court.dart';
import 'data/mock_database.dart';

import 'dart:io';
import 'functions/all_function.dart';
import 'functions/cls.dart';
import 'functions/display_info.dart';
import 'functions/login/display_login.dart';
import 'functions/display_menu.dart';
import 'functions/print_letters_slowly.dart';
import 'functions/register_login.dart';

// Login, damit der Fortschritt online gespeichert wird.
// Anzeigen von Code Snippets, bei denen gesagt werden soll, was rauskommt.
// Ein Exerciseboard, auf dem man sieht, wie viele und welche Aufgaben man gemacht hat.

void main() async {
  ///
  ///
  ///
  // Create the repository
  MockDatabase repository = MockDatabase();

  // Create a new player and add to the repository
  Player playerViktor = Player.createProfile("Viktor", "pass123", repository);
  Player playerMike = Player.createProfile("Mike", "pass456", repository);

  // Log in the player
  playerViktor.loginPlayer("Viktor", "pass123", repository);

  // Create a new basketball court and add to the repository
  BasketballCourt court_jb = BasketballCourt("Court-JB", "Jakob Brucker");
  court_jb.saveCourt(repository);
  BasketballCourt court_sl = BasketballCourt("Court-SL", "Sophie La Roche");
  court_sl.saveCourt(repository);

  // Player indicates a time to play
  court_jb.indicatePlayTime(playerViktor, "10:00 AM");
  court_jb.indicatePlayTime(playerMike, "10:00 AM");

  // Check who is playing at 10:00 AM
  court_jb.getPlayersAtTime("10:00 AM");

  // Log out the player
  playerViktor.logoutPlayer();

  // Delete the player profile
  playerViktor.deleteProfile(repository);

  // Delete the court from the repository
  court_jb.deleteCourt(repository);

  ///
  ///
  ///
  print('\n________  Start _____________\n');
  cls();
  displayInfo(1);
  displayInfo(2);
  bool isLoggedIn = false;

  while (true) {
    displayMenu(isLoggedIn);
    stdout.write('\nEnter the number: ');
    String? input = stdin.readLineSync();
    switch (input) {
      case '1':
        cls();
        await printLettersSlowly(displayLogin(1), 20);
        isLoggedIn = registerLogin(); // input List<String> later implementiren
        cls();
        if (isLoggedIn == false) {
          await printLettersSlowly(
              displayLogin(3), 100); //login is incorrect, try again
        }
        await printLettersSlowly(displayLogin(2), 100);
        cls();
        await printLettersSlowly(displayLogin(10), 100);
        break;

      case '2':
        if (isLoggedIn) {
          infoAboutPlayer();
          cls();
          await printLettersSlowly(displayLogin(10), 80);
        } else {
          cls();
          displayInfo(11);
        }
        break;
      case '3':
        if (isLoggedIn) {
          setInfo();
          cls();
          await printLettersSlowly(displayLogin(10), 80);
        } else {
          cls();
          displayInfo(11);
        }
        break;
      case '4':
        cls();
        displayInfo(12);
        exit(0); // Standard out code, 0 = no errors.
      default:
        cls();
        displayInfo(14);
    }
  }
}
