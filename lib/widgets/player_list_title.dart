import 'package:flutter/material.dart';
import '../models/player.dart';

class PlayerListTile extends StatelessWidget {
  final Player player;

  PlayerListTile({required this.player});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(player.name[
            0]), // Display the first character of the player's name as the avatar
      ),
      title: Text(player.name),
      subtitle: Text('${player.age} years old, ${player.position}'),
      onTap: () {
        // Navigate to player details screen
        // You can implement this later
      },
    );
  }
}
