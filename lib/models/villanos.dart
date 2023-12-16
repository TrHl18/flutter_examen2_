
class Villain {
  final String name;
  final String description;
  final List<String> books;

  Villain({
    required this.name,
    required this.description,
    required this.books,
  });

  factory Villain.fromJson(Map<String, dynamic> json) {
    return Villain(
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      books: List<String>.from(json['books'] ?? []),
    );
  }
}