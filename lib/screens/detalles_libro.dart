import 'package:flutter/material.dart';
import 'package:flutter_examen_2/services/servicios.dart';
import 'package:provider/provider.dart';
import 'package:flutter_examen_2/providers/libro_detalles_provider.dart';
import 'package:flutter_examen_2/models/modelos.dart'; 
import 'package:flutter_examen_2/services/servicios.dart'; 

class BookDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedBookProvider = Provider.of<SelectedBookProvider>(context);
    final selectedBook = selectedBookProvider.selectedBook;

    if (selectedBook == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Detalles del Libro'),
        ),
        body: Center(
          child: Text('No se ha seleccionado ningún libro.'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Libro'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FutureBuilder<List<Map<String, dynamic>>>(
            future: StephenKingApiService().getVillainsForBook(selectedBook.id),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                // Handle nullable value
                final villains = snapshot.data ?? [];

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Villanos Asociados:',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    for (var villain in villains) ...[
                      ListTile(
                        title: Text(villain['name'] ?? 'Unknown Name'),
                        subtitle: Text(villain['description'] ?? 'No description available'),
                      ),
                      Divider(),
                    ],
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }
}