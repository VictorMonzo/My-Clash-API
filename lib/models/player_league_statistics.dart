import 'dart:convert';

import 'league_seaason_result.dart';

class PlayerLeagueStatistics {
  final LeagueSeasonResult bestSeason;
  final LeagueSeasonResult previousSeason;
  final LeagueSeasonResult currentSeason;

  PlayerLeagueStatistics(
      this.bestSeason, this.previousSeason, this.currentSeason);

  static PlayerLeagueStatistics fromJson(json) => PlayerLeagueStatistics(
      LeagueSeasonResult.fromJson(json['bestSeason']),
      LeagueSeasonResult.fromJson(json['previousSeason']),
      LeagueSeasonResult.fromJson(json['currentSeason']));

  @override
  String toString() {
    return 'PlayerLeagueStatistics{bestSeason: $bestSeason, previousSeason: $previousSeason, currentSeason: $currentSeason}';
  }
}
