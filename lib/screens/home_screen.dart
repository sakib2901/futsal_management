import 'package:flutter/material.dart';
import 'package:futsal_management/custom_widgets/team_card.dart';
import 'package:futsal_management/models/team.dart';
import 'package:futsal_management/custom_widgets/add_team_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Team> teams = [
    Team(name: 'Team B', dept: 'Dept. B'),
    Team(name: 'Team A', dept: 'Dept. A'),
    Team(name: 'Team C', dept: 'Dept. C'),
    Team(name: 'Team A', dept: 'Dept. A'),
    Team(name: 'Team B', dept: 'Dept. B'),
    Team(name: 'Team C', dept: 'Dept. C'),
    Team(name: 'Team A', dept: 'Dept. A'),
    Team(name: 'Team B', dept: 'Dept. B'),
    Team(name: 'Team C', dept: 'Dept. C'),
    Team(name: 'Team A', dept: 'Dept. A'),
    Team(name: 'Team B', dept: 'Dept. B'),
    Team(name: 'Team C', dept: 'Dept. C'),
    // Add more teams here
  ];

  void addTeam(Team newTeam) {
    setState(
      () {
        teams.add(newTeam);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Futsal Management App'),
      ),
      body: Column(
        children: [
          // Section 1: Horizontally Scrollable Banners
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Match Results',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            height: 200, // Adjust the height according to your needs
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // Replace with the actual number of banners
              itemBuilder: (context, index) {
                // Replace this with your custom banner widget
                return Container(
                  width: 300, // Adjust the width according to your needs
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Banner ${index + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Teams',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Section 2: Other Content
          Expanded(
            child: ListView.builder(
              itemCount: teams.length,
              itemBuilder: (context, index) {
                return TeamCard(team: teams[index]);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AddTeamDialog(
              onAdd: addTeam,
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
