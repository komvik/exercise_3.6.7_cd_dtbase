import '../data/database_repository.dart';
import 'player.dart';

class BasketballCourt {
  String name;
  String location;
  Map<String, List<Player>> schedule =
      {}; // Key is time, value is a list of players playing at that time.

  BasketballCourt(this.name, this.location);

  // Indicate the place and time where they are going to play
  void indicatePlayTime(Player player, String time) {
    if (!schedule.containsKey(time)) {
      schedule[time] = [];
    }
    schedule[time]?.add(player);
    print("${player.login} will play at $name on $time.");
  }

  // Get information: See who is playing at what time
  void getPlayersAtTime(String time) {
    if (schedule.containsKey(time)) {
      print(
          "Players playing at $name on $time: ${schedule[time]?.map((p) => p.login).join(', ')}");
    } else {
      print("No players scheduled for $time at $name.");
    }
  }

  // Plan future games
  void planFutureGame(Player player, String time) {
    indicatePlayTime(player, time);
    print("${player.login} planned a future game at $name on $time.");
  }

  // Save or update the court in the repository
  void saveCourt(DatabaseRepository repository) {
    repository.addCourt(this);
  }

  // Delete the court from the repository
  void deleteCourt(DatabaseRepository repository) {
    repository.deleteCourt(name);
    print("Court $name deleted from the repository.");
  }
}
