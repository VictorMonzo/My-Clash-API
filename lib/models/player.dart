import 'dart:convert';

import 'enums/role.dart';
import 'item.dart';
import 'player_achievement_badge.dart';
import 'player_achievement_progress.dart';
import 'player_clan.dart';
import 'player_item_level.dart';
import 'arena.dart';
import 'player_league_statistics.dart';

class Player {
  final int wins;
  final int losses;
  final String tag;
  final String name;
  final PlayerClan clan;
  final List<PlayerItemLevel> cards;
  final Arena arena;
  final Role role;
  final int totalDonations;
  final PlayerLeagueStatistics leagueStatistics;
  final Item currentFavouriteCard;
  final List<PlayerAchievementBadge> badges;
  final int expLevel;
  final int trophies;
  final int bestTrophies;
  final int donations;
  final int donationsReceived;
  final List<PlayerAchievementProgress> achievements;
  final int battleCount;
  final int threeCrownWins;
  final int challengeCardsWon;
  final int challengeMaxWins;
  final int tournamentCardsWon;
  final int tournamentBattleCount;
  final List<PlayerItemLevel> currentDeck;
  final int warDayWins;
  final int clanCardsCollected;
  final int starPoints;
  final int expPoints;

  const Player(
      {required this.wins,
      required this.losses,
      required this.tag,
      required this.name,
      required this.clan,
      required this.cards,
      required this.arena,
      required this.role,
      required this.totalDonations,
      required this.leagueStatistics,
      required this.currentFavouriteCard,
      required this.badges,
      required this.expLevel,
      required this.trophies,
      required this.bestTrophies,
      required this.donations,
      required this.donationsReceived,
      required this.achievements,
      required this.battleCount,
      required this.threeCrownWins,
      required this.challengeCardsWon,
      required this.challengeMaxWins,
      required this.tournamentCardsWon,
      required this.tournamentBattleCount,
      required this.currentDeck,
      required this.warDayWins,
      required this.clanCardsCollected,
      required this.starPoints,
      required this.expPoints});

  static Player fromJson(json) => Player(
      name: json['name'],
      losses: json['losses'],
      tag: json['tag'],
      wins: json['wins'],
      clan: PlayerClan.fromJson(json['clan']),
      cards: PlayerItemLevel.getCards(jsonEncode(json['cards'])),
      arena: Arena.fromJson(json['arena']),
      role: Role.values.byName(json['role'].toString().toUpperCase()),
      totalDonations: json['totalDonations'],
      leagueStatistics:
          PlayerLeagueStatistics.fromJson(json['leagueStatistics']),
      currentFavouriteCard: Item.fromJson(json['currentFavouriteCard']),
      badges: PlayerAchievementBadge.getBadges(jsonEncode(json['badges'])),
      expLevel: json['expLevel'],
      trophies: json['trophies'],
      bestTrophies: json['bestTrophies'],
      donations: json['donations'],
      donationsReceived: json['donationsReceived'],
      achievements: PlayerAchievementProgress.getAchievements(
          jsonEncode(json['achievements'])),
      battleCount: json['battleCount'],
      threeCrownWins: json['threeCrownWins'],
      challengeCardsWon: json['challengeCardsWon'],
      challengeMaxWins: json['challengeMaxWins'],
      tournamentCardsWon: json['tournamentCardsWon'],
      tournamentBattleCount: json['tournamentBattleCount'],
      currentDeck: PlayerItemLevel.getCards(jsonEncode(json['currentDeck'])),
      warDayWins: json['warDayWins'],
      clanCardsCollected: json['clanCardsCollected'],
      starPoints: json['starPoints'],
      expPoints: json['expPoints']);

  @override
  String toString() {
    return 'Player { \n'
        '\t wins: $wins, \n'
        '\t losses: $losses, \n'
        '\t tag: $tag, \n'
        '\t name: $name, \n'
        '\t clan: $clan, \n'
        '\t cards: ${cards.length} \n'
        '\t arena: $arena \n'
        '\t role: $role \n'
        '\t totalDonations: $totalDonations \n'
        '\t leagueStatistics: ${leagueStatistics != null ? 'There are data' : 'There are no data'} \n'
        '\t currentFavouriteCard: $currentFavouriteCard \n'
        '\t badges: ${badges.length} \n'
        '\t expLevel: $expLevel \n'
        '\t trophies: $trophies \n'
        '\t bestTrophies: $bestTrophies \n'
        '\t donations: $donations \n'
        '\t donationsReceived: $donationsReceived \n'
        '\t achievements: ${achievements.length} \n'
        '\t battleCount: $battleCount \n'
        '\t threeCrownWins: $threeCrownWins \n'
        '\t challengeCardsWon: $challengeCardsWon \n'
        '\t challengeMaxWins: $challengeMaxWins \n'
        '\t tournamentCardsWon: $tournamentCardsWon \n'
        '\t tournamentBattleCount: $tournamentBattleCount \n'
        '\t currentDeck: ${currentDeck.length} \n'
        '\t warDayWins: $warDayWins \n'
        '\t clanCardsCollected: $clanCardsCollected \n'
        '\t starPoints: $starPoints \n'
        '\t expPoints: $expPoints \n'
        '}';
  }
}
