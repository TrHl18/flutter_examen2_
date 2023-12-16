import 'package:dio/dio.dart';

class StephenKingApiService {
  final String Url = 'https://stephen-king-api.onrender.com';
 final Dio _dio = Dio();

   Future<List<dynamic>> getBooks() async {
    try {
      final response = await _dio.get(url);
      return response.data;
    } catch (error) {
      print('Error fetching data: $error');
      throw Exception('Failed to load data');
    }
  }
  final String url = "https://stephen-king-api.onrender.com/books"; 
 
 Future<List<Map<String, dynamic>>> getVillainsForBook(String bookId) async {
    try {
      final response = await _dio.get('https://stephen-king-api.onrender.com/villains?bookId=$bookId');
      
      if (response.statusCode == 200) {
        // Assuming the API returns a list of villains associated with the given bookId
        final List<dynamic> data = response.data;
        return List<Map<String, dynamic>>.from(data);
      } else {
        throw Exception('Failed to load villains');
      }
    } catch (error) {
      print('Error fetching villains: $error');
      throw Exception('Failed to load villains');
    }
  }
}