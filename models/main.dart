import 'player.dart';
import 'basketball_court.dart';
import 'app_database_repository.dart';

// Login, damit der Fortschritt online gespeichert wird.
// Anzeigen von Code Snippets, bei denen gesagt werden soll, was rauskommt.
// Ein Exerciseboard, auf dem man sieht, wie viele und welche Aufgaben man gemacht hat.

void main() {
  // Create the repository
  AppDatabaseRepository repository = AppDatabaseRepository();

  // Create a new player and add to the repository
  Player playerViktor = Player.createProfile("Viktor", "pass123", repository);

  // Log in the player
  playerViktor.loginPlayer("Viktor", "pass123", repository);

  // Create a new basketball court and add to the repository
  BasketballCourt court1 = BasketballCourt("Court1", "JakobBruker");
  court1.saveCourt(repository);

  // Player indicates a time to play
  court1.indicatePlayTime(playerViktor, "10:00 AM");

  // Check who is playing at 10:00 AM
  court1.getPlayersAtTime("10:00 AM");

  // Log out the player
  playerViktor.logoutPlayer();

  // Delete the player profile
  playerViktor.deleteProfile(repository);

  // Delete the court from the repository
  court1.deleteCourt(repository);
}
