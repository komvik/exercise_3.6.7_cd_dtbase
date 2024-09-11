void displayMenu(bool isLoggedIn) {
  print('\n       MENU:');
  if (!isLoggedIn) {
    print('   1. Registration/Login');
  } else {
    print('   1. Logout');
  }

  if (isLoggedIn) {
    print('   2. Info about player and corts');
  }
  ;
  if (isLoggedIn) {
    print('   3. Read write message');
  }
  ;
  print('   4. Exit app');
}
