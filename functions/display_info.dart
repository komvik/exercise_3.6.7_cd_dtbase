void displayInfo(int number) {
  Map<int, String> printInfo = {
    1: "Welcome to your App play basketball !",
    2: "Please select one of the menu items.",
    3: "Info 3",
    5: "Info 4",
    11: "Please log in first.",
    12: 'The program has finished its work\n\n'
        'Goodbye\n'
        '    Arrivederci\n'
        '        Au revoir!\n',
    14: 'Invalid input. Please choose a number between 1 and 4.',
    21: "",
    31: "",
    41: "",
    51: "",
    61: "",
    71: "",
    81: "",
    99: ""
  };
  print(printInfo[number]);
}
