import 'package:flutter/material.dart';
import '../models/match.dart';

class MatchListTile extends StatelessWidget {
  final Match match;

  MatchListTile({required this.match});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.sports_soccer),
      title: Text('${match.homeTeam.name} vs ${match.awayTeam.name}'),
      subtitle: Text('${match.dateTime} at ${match.location}'),
      onTap: () {
        // Navigate to match details screen
        // You can implement this later
      },
    );
  }
}
