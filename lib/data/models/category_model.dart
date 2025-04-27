class Category {
  final int id;
  final String name;
  final String picture;

  // Constructor
  Category({
    required this.id,
    required this.name,
    required this.picture,
  });

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      picture: map['picture'] ?? '',
    );
  }
}
