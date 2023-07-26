import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;

  CustomCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.all(8.0),
      child: child,
    );
  }
}
