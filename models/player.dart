import '../data/database_repository.dart';

class Player {
  String login;
  String password;
  bool isLoggedIn = false;

  Player(this.login, this.password);

  // Log in/out of your profile by entering your login/password
  bool loginPlayer(
      String login, String password, DatabaseRepository repository) {
    Player? player = repository.getPlayer(login);
    if (player != null && player.password == password) {
      isLoggedIn = true;
      print("Logged in successfully.\n\n");
      return true;
    } else {
      print("Login failed.");
      return false;
    }
  }

  void logoutPlayer() {
    isLoggedIn = false;
    print("\nLogged out successfully.\n");
  }

  // Creating a new player profile (newlogin, newpassword)
  static Player createProfile(
      String newLogin, String newPassword, DatabaseRepository repository) {
    if (checkPasswordRules(newPassword)) {
      Player newPlayer = Player(newLogin, newPassword);
      repository.addPlayer(newPlayer);
      print("Player profile created successfully.\n");
      return newPlayer;
    } else {
      throw Exception("Password does not meet the required rules.");
    }
  }

  // Check password creation rules
  static bool checkPasswordRules(String password) {
    // Example: Password must be at least 6 characters long
    return password.length >= 6;
  }

  // Delete player profile
  void deleteProfile(DatabaseRepository repository) {
    repository.deletePlayer(login);
    isLoggedIn = false;
    print("Player profile deleted.");
  }
}
