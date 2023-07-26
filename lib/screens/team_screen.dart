// File: team_screen.dart
import 'package:flutter/material.dart';
import '../models/team.dart';
import '../services/team_service.dart';
import '../widgets/custom_button.dart';

class TeamScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teams'),
      ),
      body: FutureBuilder<List<Team>>(
        future: TeamService.getAllTeams(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final teams = snapshot.data;
            return ListView.builder(
              itemCount: teams?.length,
              itemBuilder: (context, index) =>
                  _buildTeamCard(context, teams![index]),
            );
          }
        },
      ),
    );
  }

  Widget _buildTeamCard(BuildContext context, Team team) {
    return GestureDetector(
      onTap: () {
        // Navigate to team details screen
        // You can implement this later
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(team.logoUrl),
                  radius: 40,
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        team.name,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Total Players: ${team.totalPlayers}', // Replace with actual team data
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  text: 'View Details',
                  onPressed: () {
                    // Navigate to team details screen
                    // You can implement this later
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
