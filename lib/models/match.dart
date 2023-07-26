import 'package:futsal_management/models/team.dart';

class Match {
  final int id;
  final Team homeTeam;
  final Team awayTeam;
  final DateTime dateTime;
  final String location;

  Match(
      {required this.id,
      required this.homeTeam,
      required this.awayTeam,
      required this.dateTime,
      required this.location});
}
