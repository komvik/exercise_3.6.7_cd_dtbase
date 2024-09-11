
//           I M P O R T A N T
//   in the future, recording will take place in the database    
//   for this you need to connect flutter packages  
//   information about players will also be read from the database
//

//   _________________________________________________________
//
//import 'package:sqflite/sqflite.dart';
//import 'package:path/path.dart'; // For path manipulation
//import 'package:path_provider/path_provider.dart'; // To get the database directory

// Initialize the SQLite database
/*
Future<Database> initializeDatabase() async {
  final directory = await getApplicationDocumentsDirectory();
  final path = join(directory.path, 'user_data.db');

  // Open or create the database
  return openDatabase(
    path,
    version: 1,
    onCreate: (db, version) {
      // Create a table for storing users
      return db.execute(
        'CREATE TABLE users(id INTEGER PRIMARY KEY, username TEXT, password TEXT)',
      );
    },
  );
}

// Function to add a new user to the database
Future<void> saveUserData(Database db, String username, String password) async {
  await db.insert(
    'users',
    {
      'username': username,
      'password': password, // Password is stored in plain text here
    },
    conflictAlgorithm: ConflictAlgorithm.replace,
  );

  print('User $username added to the database.');
}

// Function to read and print all users from the database
Future<void> readUserData(Database db) async {
  List<Map<String, dynamic>> users = await db.query('users');

  if (users.isNotEmpty) {
    for (var user in users) {
      print('Username: ${user['username']}, Password: ${user['password']}');
    }
  } else {
    print('No users found in the database.');
  }
}

void main() async {
  // Initialize the database
  Database db = await initializeDatabase();

  // Save a user to the database
  await saveUserData(db, 'user123', 'password123');

  // Read and print all users
  await readUserData(db);
}
*/



