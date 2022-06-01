import 'dart:convert';

class PlayerAchievementProgress {
  final int stars;
  final int value;
  final String name;
  final int target;
  final String info;
  final String? completionInfo;

  PlayerAchievementProgress(this.stars, this.value, this.name, this.target,
      this.info, this.completionInfo);

  static PlayerAchievementProgress fromJson(json) => PlayerAchievementProgress(
      json['stars'],
      json['value'],
      json['name'],
      json['target'],
      json['info'],
      json['completionInfo']);

  static List<PlayerAchievementProgress> getAchievements(achievements) => json
      .decode(achievements)
      .map<PlayerAchievementProgress>(PlayerAchievementProgress.fromJson)
      .toList();

  @override
  String toString() {
    return 'PlayerAchievementProgress{stars: $stars, value: $value, name: $name, target: $target, info: $info, completionInfo: $completionInfo}';
  }
}
