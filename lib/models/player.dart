class Player {
  final int wins;
  final int losses;
  final String tag;
  final String name;

  const Player(
      {required this.wins, required this.losses, required this.tag, required this.name});

  static Player fromJson(json) =>
      Player(name: json['name'],
          losses: json['losses'],
          tag: json['tag'],
          wins: json['wins']);
}