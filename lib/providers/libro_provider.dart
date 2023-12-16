import 'package:flutter/material.dart';
import 'package:flutter_examen_2/services/servicios.dart';
import 'package:provider/provider.dart';
import 'package:flutter_examen_2/models/modelos.dart';

class BooksProvider extends ChangeNotifier {
  final StephenKingApiService apiService = StephenKingApiService();
  List<Book> _books = [];

  List<Book> get books => _books;

  Future<void> fetchBooks() async {
    try {
      final booksData = await apiService.getBooks();
      _books = booksData.map((bookJson) => Book.fromJson(bookJson)).toList();
      notifyListeners();
    } catch (error) {
      print('Error fetching books: $error');
    }
  }
 Book? getBookById(String id) {
  return _books.firstWhere((book) => book.id == id, orElse: () => Book(
    id: '',
    title: 'Book Not Found',
    author: '',
    publicationYear: 0,
    genres: [],
  ));
}
}