import 'package:flutter/material.dart';
import 'team_screen.dart';
import 'player_screen.dart';
import 'match_screen.dart';
import 'statistics_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Futsal Management App'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[Colors.blue, Color.fromARGB(255, 212, 233, 250)]),
          image: DecorationImage(
            image: AssetImage('assets/images/football.png'),
            fit: BoxFit.cover,
          ),
        ), // Custom background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/logo.png'),
              ),
              const SizedBox(height: 30),
              _buildMenuCard(context, 'Teams', TeamScreen()),
              _buildMenuCard(context, 'Players', PlayerScreen()),
              _buildMenuCard(context, 'Matches', MatchScreen()),
              _buildMenuCard(context, 'Statistics', StatisticsScreen()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, String title, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Card(
          color: Colors.white,
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
