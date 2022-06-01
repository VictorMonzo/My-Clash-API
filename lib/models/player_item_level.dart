import 'dart:convert';

class PlayerItemLevel {
  final int id;
  final int count;
  final int level;
  final String name;
  final int maxLevel;
  final String iconUrls;

  PlayerItemLevel(
      this.id, this.count, this.level, this.name, this.maxLevel, this.iconUrls);

  static PlayerItemLevel fromJson(json) => PlayerItemLevel(
      json['id'],
      json['count'],
      json['level'],
      json['name'],
      json['maxLevel'],
      json['iconUrls']['medium']);

  static List<PlayerItemLevel> getCards(cards) => json
      .decode(cards)
      .map<PlayerItemLevel>(PlayerItemLevel.fromJson)
      .toList();

  @override
  String toString() {
    return 'PlayerItemLevel{id: $id, count: $count, level: $level, name: $name, maxLevel: $maxLevel, iconUrls: $iconUrls}';
  }
}
