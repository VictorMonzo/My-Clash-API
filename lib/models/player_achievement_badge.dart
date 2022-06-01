import 'dart:convert';

class PlayerAchievementBadge {
  final int maxLevel;
  final String iconUrls;
  final int progress;
  final int? target;
  final int level;
  final String name;

  PlayerAchievementBadge(this.maxLevel, this.iconUrls, this.progress,
      this.target, this.level, this.name);

  static PlayerAchievementBadge fromJson(json) => PlayerAchievementBadge(
      json['maxLevel'],
      json['iconUrls']['large'],
      json['progress'],
      json['target'],
      json['level'],
      json['name']);

  static List<PlayerAchievementBadge> getBadges(badges) => json
      .decode(badges)
      .map<PlayerAchievementBadge>(PlayerAchievementBadge.fromJson)
      .toList();

  @override
  String toString() {
    return 'PlayerAchievementBadge{maxLevel: $maxLevel, iconUrls: $iconUrls, progress: $progress, target: $target, level: $level, name: $name}';
  }
}
