String displayLogin(int strnum) {
  String str = "";
  switch (strnum) {
    case 1:
      str =
          "You are in the registration mode, \nto continue press the menu letter";
      break;
    case 2:
      str = "Welcome to the program ";
      break;
    case 3:
      str = " login is incorrect, try again ";
      break;
    case 10:
      str = " Select menu items";
    default:
  }
  return str;
}
