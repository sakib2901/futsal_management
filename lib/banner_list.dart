import 'package:flutter/material.dart';

class BannerList extends StatelessWidget {
  const BannerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 300,
          color: Colors.red,
        ),
        Container(
          width: 300,
          color: Colors.blue,
        ),
        Container(
          width: 300,
          color: Colors.green,
        ),
        Container(
          width: 300,
          color: Colors.yellow,
        ),
        Container(
          width: 300,
          color: Colors.orange,
        ),
      ],
    );
  }
}
