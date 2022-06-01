class LeagueSeasonResult {
  final String? id;
  final int trophies;
  final int? rank;
  final int? bestTrophies;

  LeagueSeasonResult(this.id, this.trophies, this.rank, this.bestTrophies);

  static LeagueSeasonResult fromJson(json) => LeagueSeasonResult(
      json['id'], json['trophies'], json['rank'], json['bestTrophies']);

  @override
  String toString() {
    return 'LeagueSeasonResult{id: $id, trophies: $trophies, rank: $rank, bestTrophies: $bestTrophies}';
  }
}
