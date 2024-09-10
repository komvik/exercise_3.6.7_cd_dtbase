// The BasketballCourtOld class will represent the basketball courts and include
// methods to see who is playing at a given time and to plan future games.
// Each court has a name, location, and a schedule that stores which players
// are playing at specific times.
// Players can indicate when and where they'll play
// and view other players scheduled for a particular time.

import 'player_old_class.dart';

class BasketballCourtOld {
  String name;
  String location;
  // shedule == raspisanie kogda kto igraet
  // Key is time, value is a list of players playing at that time.
  Map<String, List<PlayerOld>> schedule = {};

  BasketballCourtOld(this.name, this.location);
  //-------------------------------------------------------------
  // 2. Get information: Indicate the place and time where they are going to play
  void indicatePlayTime(PlayerOld player, String time) {
    if (!schedule.containsKey(time)) {
      schedule[time] = [];
    }
    schedule[time]?.add(player);
    print("${player.login} will play at $name on $time.");
  }

  //-------------------------------------------------------------
  // 2. Get information: See who is playing at what time
  void getPlayersAtTime(String time) {
    if (schedule.containsKey(time)) {
      print(
          "Players playing at $name on $time: ${schedule[time]?.map((p) => p.login).join(', ')}");
    } else {
      print("No players scheduled for $time at $name.");
    }
  }

  //-------------------------------------------------------------
  // 3. Set information: Plan future games
  void planFutureGame(PlayerOld player, String time) {
    indicatePlayTime(player, time);
    print("${player.login} planned a future game at $name on $time.");
  }

  // 4. Close the program (this can be handled at the main app level)
  //  need to work on this some more.:)
}
