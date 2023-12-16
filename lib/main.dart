
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_examen_2/providers/libro_provider.dart';
import 'package:flutter_examen_2/providers/libro_detalles_provider.dart';
import 'package:flutter_examen_2/screens/listado_libros.dart';
import 'package:flutter_examen_2/screens/detalles_libro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BooksProvider()),
        ChangeNotifierProvider(create: (context) => SelectedBookProvider()),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => BookListScreen(),
          '/book_details': (context) => BookDetailsScreen(),
        },
        theme: ThemeData(
          primaryColor: Colors.blue, 
          fontFamily: 'Roboto', 
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.lightGreen, 
          ),
          textTheme: TextTheme(
            headline6: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            bodyText2: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ),
    );
  }
}