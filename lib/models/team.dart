class Team {
  final String name;
  final String dept;
  // final int playerCount;
  List<String> players;

  Team({
    required this.name,
    required this.dept,
    // required this.playerCount,
    this.players = const [],
  });

  void addPlayer(String playerName) {
    players.add(playerName);
  }

  void removePlayer(String playerName) {
    players.remove(playerName);
  }
}
