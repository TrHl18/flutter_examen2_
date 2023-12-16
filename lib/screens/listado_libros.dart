import 'package:flutter/material.dart';
import 'package:flutter_examen_2/providers/libro_detalles_provider.dart';
import 'package:flutter_examen_2/providers/libro_provider.dart';
import 'package:provider/provider.dart';


class BookListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final booksProvider = Provider.of<BooksProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Libreria', textAlign: TextAlign.center,),
      ),
      body: FutureBuilder(
        future: booksProvider.fetchBooks(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            // Mostrar la lista de libros
            return ListView.builder(
              itemCount: booksProvider.books.length,
              itemBuilder: (context, index) {
                final book = booksProvider.books[index];
                return ListTile(
                  title: Text(book.title),
                  onTap: () {
                    // Seleccionar el libro y navegar a la pantalla de detalles
                    Provider.of<SelectedBookProvider>(context, listen: false)
                        .setSelectedBook(book);
                    Navigator.pushNamed(context, '/book_details'); // Reemplaza con la ruta correcta
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}