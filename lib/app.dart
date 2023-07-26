import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(FutsalManagementApp());
}

class FutsalManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futsal Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
