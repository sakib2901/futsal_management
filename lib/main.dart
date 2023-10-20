import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const FutsalManagementApp());
}

class FutsalManagementApp extends StatelessWidget {
  const FutsalManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futsal Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
