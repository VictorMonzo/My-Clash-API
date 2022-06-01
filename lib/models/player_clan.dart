class PlayerClan {
  final int badgeId;
  final String tag;
  final String name;

  PlayerClan(this.badgeId, this.tag, this.name);

  static PlayerClan fromJson(json) =>
      PlayerClan(json['badgeId'], json['tag'], json['name']);

  @override
  String toString() {
    return 'PlayerClan{badgeId: $badgeId, tag: $tag, name: $name}';
  }
}
