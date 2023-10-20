// File: team.dart
import 'dart:io';

class Team {
  final int id;
  final String name;
  final String logoUrl;
  File? logoImage;

  Team(
      {required this.id,
      required this.name,
      required this.logoUrl,
      this.logoImage});
}
