import 'package:dio/dio.dart';


class StephenKingApiService {
  final String url = "https://stephen-king-api.onrender.com/books"; 
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
}
