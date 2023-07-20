import 'package:flutter/material.dart';

class TeamDetailsScreen extends StatefulWidget {
  const TeamDetailsScreen({super.key});

  @override
  State<TeamDetailsScreen> createState() => _TeamDetailsScreenState();
}

class _TeamDetailsScreenState extends State<TeamDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Team Details'),
      ),
    );
  }
}
