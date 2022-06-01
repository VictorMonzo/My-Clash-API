class Item {
  final String iconUrls;
  final String name;
  final int id;
  final int maxLevel;

  Item(this.iconUrls, this.name, this.id, this.maxLevel);

  static Item fromJson(json) => Item(
      json['iconUrls']['medium'], json['name'], json['id'], json['maxLevel']);

  @override
  String toString() {
    return 'Item{iconUrls: ${iconUrls.isNotEmpty ? 'with icon' : 'no icon'}, name: $name, id: $id, maxLevel: $maxLevel}';
  }
}
