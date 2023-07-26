import '../models/team.dart';

class TeamService {
  // Replace this with API integration in the future
  static Future<List<Team>> getAllTeams() async {
    // Simulating fetching data from API
    await Future.delayed(Duration(seconds: 1));
    return [
      Team(
          id: 1,
          name: 'Team A',
          logoUrl: 'https://example.com/team_a_logo.png'),
      Team(
          id: 2,
          name: 'Team B',
          logoUrl: 'https://example.com/team_b_logo.png'),
    ];
  }
}
