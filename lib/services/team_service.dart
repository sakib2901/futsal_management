// File: team_service.dart
import '../models/team.dart';

class TeamService {
  static Future<List<Team>> getAllTeams() async {
    // Replace this code with your actual API call to fetch teams data
    await Future.delayed(const Duration(seconds: 2)); // Simulating a delay
    return [
      Team(
          id: 1,
          name: 'Team A',
          logoUrl: 'https://example.com/team_a_logo.png'),
      Team(
          id: 2,
          name: 'Team B',
          logoUrl: 'https://example.com/team_b_logo.png'),
      // Add more teams as needed
    ];
  }
}
