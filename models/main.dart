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
}
