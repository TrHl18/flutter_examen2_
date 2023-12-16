
import 'package:flutter/material.dart';
import 'package:flutter_examen_2/models/modelos.dart';
import 'package:provider/provider.dart';
import 'package:flutter_examen_2/models/modelos.dart';

class SelectedBookProvider extends ChangeNotifier {
  Book? _selectedBook;

  Book? get selectedBook => _selectedBook;

  void setSelectedBook(Book book) {
    _selectedBook = book;
    notifyListeners();
  }

  void clearSelectedBook() {
    _selectedBook = null;
    notifyListeners();
  }
}
