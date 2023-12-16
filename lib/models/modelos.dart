


class Book {
   final String id;
  final String title;
  final String author;
  final int publicationYear;
  final List<String> genres;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.publicationYear,
    required this.genres,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book (
      id: json['id'] ?? '', 
      title: json['title'],
      author: json['author'] ,
      publicationYear: json['publicationYear'] ,
      genres: List<String>.from(json['genres']),
    );

Map<String, dynamic> toJson() => {
        
  "id" : id, 
  'title' : title ,
  'author' : author,
  'publicationYear' : publicationYear ,
  'genres' : genres,
    };
}
