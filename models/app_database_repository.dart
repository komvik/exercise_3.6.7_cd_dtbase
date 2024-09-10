import '../data/database_repository.dart';
import 'basketball_court.dart';
import 'player.dart';

class AppDatabaseRepository implements DatabaseRepository {
  // In-memory storage for players and basketball courts
  Map<String, Player> playerDatabase = {};
  Map<String, BasketballCourt> courtDatabase = {};

  // Player-related methods

  @override
  void addPlayer(Player player) {
    if (playerDatabase.containsKey(player.login)) {
      print("Player with login '${player.login}' already exists.");
    } else {
      playerDatabase[player.login] = player;
      print("Player '${player.login}' added to the database.");
    }
  }

  @override
  Player? getPlayer(String login) {
    if (playerDatabase.containsKey(login)) {
      return playerDatabase[login];
    } else {
      print("Player with login '$login' not found.");
      return null;
    }
  }

  @override
  void updatePlayer(Player player) {
    if (playerDatabase.containsKey(player.login)) {
      playerDatabase[player.login] = player;
      print("Player '${player.login}' updated.");
    } else {
      print("Player with login '${player.login}' not found.");
    }
  }

  @override
  void deletePlayer(String login) {
    if (playerDatabase.containsKey(login)) {
      playerDatabase.remove(login);
      print("Player with login '$login' deleted from the database.");
    } else {
      print("Player with login '$login' not found.");
    }
  }

  // BasketballCourt-related methods

  @override
  void addCourt(BasketballCourt court) {
    if (courtDatabase.containsKey(court.name)) {
      print("Court '${court.name}' already exists.");
    } else {
      courtDatabase[court.name] = court;
      print("Court '${court.name}' added to the database.");
    }
  }

  @override
  BasketballCourt? getCourt(String name) {
    if (courtDatabase.containsKey(name)) {
      return courtDatabase[name];
    } else {
      print("Court '$name' not found.");
      return null;
    }
  }

  @override
  void updateCourt(BasketballCourt court) {
    if (courtDatabase.containsKey(court.name)) {
      courtDatabase[court.name] = court;
      print("Court '${court.name}' updated.");
    } else {
      print("Court '${court.name}' not found.");
    }
  }

  @override
  void deleteCourt(String name) {
    if (courtDatabase.containsKey(name)) {
      courtDatabase.remove(name);
      print("Court '$name' deleted from the database.");
    } else {
      print("Court '$name' not found.");
    }
  }
}
