import '../models/match.dart';
import '../models/team.dart';

class MatchService {
  // Replace this with API integration in the future
  static Future<List<Match>> getAllMatches() async {
    // Simulating fetching data from API
    await Future.delayed(Duration(seconds: 1));
    return [
      Match(
          id: 1,
          homeTeam: Team(id: 1, name: 'Team A', logoUrl: ''),
          awayTeam: Team(id: 2, name: 'Team B', logoUrl: ''),
          dateTime: DateTime.now(),
          location: 'Futsal Arena'),
    ];
  }
}
