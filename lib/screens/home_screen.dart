import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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

          // Section 2: Other Content
          Expanded(
            child: Center(
              child: Text('Other content goes here'),
            ),
          ),
        ],
      ),
    );
  }
}
