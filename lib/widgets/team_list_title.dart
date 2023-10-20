import 'package:flutter/material.dart';
import '../models/team.dart';

class TeamListTile extends StatelessWidget {
  final Team team;

  TeamListTile({required this.team});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(team.logoUrl),
      ),
      title: Text(team.name),
      onTap: () {
        // Navigate to team details screen
        // You can implement this later
      },
    );
  }
}
