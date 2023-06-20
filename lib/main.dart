import 'package:flutter/material.dart';
import 'package:futsal_management/banner_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Futsal Management'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Container(
          margin: const EdgeInsetsDirectional.symmetric(vertical: 20),
          height: 150,
          child: const BannerList(),
        ),
      ),
    );
  }
}
