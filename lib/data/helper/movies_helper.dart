import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/movies_models.dart';

class MovieApiHelper {
  final String baseUrl;

  MovieApiHelper({required this.baseUrl});

  // Fetch all movies
  Future<List<Movie>> fetchMovies() async {
    final response =
        await http.get(Uri.parse('https://www.freetestapi.com/api/v1/movies'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }

  // Fetch movie by ID
  Future<Movie> fetchMovieById(int id) async {
    final response = await http
        .get(Uri.parse('https://www.freetestapi.com/api/v1/movies/$id'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      return Movie.fromJson(data);
    } else {
      throw Exception('Failed to load movie with id $id');
    }
  }
}
