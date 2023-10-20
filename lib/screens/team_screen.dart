import 'dart:io';
import 'package:flutter/material.dart';
import '../models/team.dart';
import '../services/team_service.dart';
import '../widgets/custom_button.dart';
import '../widgets/add_team_dialog.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  List<Team> _teams = []; // Store the list of teams

  @override
  void initState() {
    super.initState();
    _loadTeams();
  }

  Future<void> _loadTeams() async {
    // Load teams from the API or any other data source
    List<Team> teams = await TeamService.getAllTeams();
    setState(() {
      _teams = teams;
    });
  }

  void _addNewTeam() async {
    final result = await showDialog(
      context: context,
      builder: (context) => const AddTeamDialog(),
    );

    if (result != null) {
      // Add the new team to the list
      String teamName = result['teamName'];
      File? teamLogo = result['teamLogo'];

      // Add your logic to add the new team to the list or API
      // For now, we just add it to the local list
      Team newTeam = Team(
        id: _teams.length + 1, // Replace with the correct ID
        name: teamName,
        logoUrl: teamLogo?.path ?? '', // Replace with the correct URL if needed
        logoImage: teamLogo,
      );

      setState(() {
        _teams.add(newTeam);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teams'),
      ),
      body: ListView.builder(
        itemCount: _teams.length,
        itemBuilder: (context, index) => _buildTeamCard(context, _teams[index]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewTeam,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildTeamCard(BuildContext context, Team team) {
    return GestureDetector(
      onTap: () {
        // Navigate to team details screen
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: team.logoImage != null
                      ? FileImage(team.logoImage!)
                      : NetworkImage(team.logoUrl) as ImageProvider<Object>,
                  radius: 40,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Text(
                    team.name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
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
