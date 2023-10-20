import 'package:flutter/material.dart';

class MatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matches'),
      ),
      body: Center(
        child: Text('List of Matches'),
      ),
    );
  }
}
