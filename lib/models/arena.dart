class Arena {
  final int id;
  final String name;
  final Object? iconUrls;

  Arena(this.id, this.name, this.iconUrls);

  static Arena fromJson(json) =>
      Arena(json['id'], json['name'], json['iconUrls']);

  @override
  String toString() {
    return 'Arena{id: $id, name: $name, iconUrls: $iconUrls}';
  }
}
