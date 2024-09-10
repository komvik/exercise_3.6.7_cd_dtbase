int calculatePasswordStrength(String password) {
  int score = 0;

  // 1 Check password length
  if (password.length >= 8) {
    score++;
  }

  // 2 Check for both uppercase and lowercase letters
  bool hasUpperCase = false;
  bool hasLowerCase = false;
  //bool hasBothCase = false;  //not used!
  for (int i = 0; i < password.length; i++) {
    if (password[i] == password[i].toUpperCase()) {
      hasUpperCase = true;
    }
    if (password[i] == password[i].toLowerCase()) {
      hasLowerCase = true;
    }
  }
  if (hasUpperCase && hasLowerCase) {
    score++;
  }

  // 3 Check for numbers
  bool hasNumber = false;
  List<String> numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
  for (int i = 0; i < password.length; i++) {
    String currentCharacter = password[i];
    for (String numberString in numbers) {
      if (currentCharacter == numberString) {
        hasNumber = true;
      }
    }
  }
  if (hasNumber) {
    score++;
  }

  // 4 Check for special characters
  //String specialCharacters = '!@#\$%^&*(),.?":{}|<>';
  String specialCharacters = '!@#%^&*(),.?":{}|<>' + '\\' + '\$';
  //print(specialCharacters);

  bool hasSpecialCharacter = false;
  for (int i = 0; i < password.length; i++) {
    //String currentCharacter = password[i];
    for (int j = 0; j < specialCharacters.length; j++) {
      if (specialCharacters[j] == password[i]) {
        hasSpecialCharacter = true;
      }
    }
  }
  if (hasSpecialCharacter) {
    score++;
  }

  return score; //an der falsche stelle war
}
