// The PlayerOld class will represent the users of the app.
// It will handle logging in, creating profiles, and deleting profiles.

class PlayerOld {
  String login;
  String password;
  bool isLoggedIn = false;

  PlayerOld(this.login, this.password);

  // 1.1 Log in/out of your profile by entering your login/password
  bool loginPlayer(String login, String password) {
    if (this.login == login && this.password == password) {
      isLoggedIn = true;
      print("Logged in successfully.");
      return true;
    } else {
      print("Login failed.");
      return false;
    }
  }

  void logoutPlayer() {
    isLoggedIn = false;
    print("Logged out successfully.");
  }

  // 1.2 Creating a new player profile (newlogin, newpassword)
  static PlayerOld createProfile(String newLogin, String newPassword) {
    if (checkPasswordRules(newPassword)) {
      print("PlayerOld profile created successfully.");
      return PlayerOld(newLogin, newPassword);
    } else {
      throw Exception("Password does not meet the required rules.");
    }
  }

  // 1.2.1 Check password creation rules
  // In the future it will be possible to connect the
  // password verification function from "calculatePasswordStrength.dart"
  static bool checkPasswordRules(String password) {
    // Example: Password must be at least 6 characters long
    if (password.length >= 6) {
      return true;
    }
    print("Password must be at least 6 characters long.");
    return false;
  }

  // 1.3 Delete player profile
  void deleteProfile() {
    login = "";
    password = "";
    isLoggedIn = false;
    print("PlayerOld profile deleted.");
  }
}
