import '../models/player.dart';

class PlayerService {
  // Replace this with API integration in the future
  static Future<List<Player>> getAllPlayers() async {
    // Simulating fetching data from API
    await Future.delayed(Duration(seconds: 1));
    return [
      Player(id: 1, name: 'John Doe', age: 25, position: 'Forward'),
      Player(id: 2, name: 'Jane Smith', age: 23, position: 'Defender'),
    ];
  }
}
